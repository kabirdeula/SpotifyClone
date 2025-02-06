import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_clone/core/dependency_injection/dependency_injection.dart';
import 'package:spotify_clone/core/utils/utils.dart';
import 'package:spotify_clone/features/authentication/authentication.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<AuthResponse> register({required UserModel user}) async {
    try {
      final credentials = await _auth.createUserWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );
      final uid = credentials.user?.uid;

      if (uid != null) {
        await sl<AuthHiveService>().saveUID(uid: uid);
      }

      log.i("(Auth Service) User registered successfully.");
      return AuthResponse(success: "User registered successfully.", uid: uid);
    } on FirebaseAuthException catch (e) {
      return _handleFirebaseAuthException(e);
    }
  }

  Future<AuthResponse> login({required UserModel user}) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );

      log.i("(Auth Service) User logged in successfully.");
      return AuthResponse(success: "User logged in successfully.");
    } on FirebaseAuthException catch (e) {
      return _handleFirebaseAuthException(e);
    }
  }

  AuthResponse _handleFirebaseAuthException(FirebaseAuthException e) {
    String errorMessage;

    switch (e.code) {
      case 'weak-password':
        errorMessage = "The password provided is too weak.";
        break;
      case 'email-already-in-use':
        errorMessage = "The account already exists for that email.";
        break;
      case 'user-not-found':
        errorMessage = "No user found for that email.";
        break;
      case 'wrong-password':
        errorMessage = "Wrong password provided for that user.";
        break;
      default:
        errorMessage = e.message ?? "Unknown error occurred.";
    }

    log.e("(Auth Service) $errorMessage");
    return AuthResponse(error: errorMessage);
  }
}
