import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_clone/core/util/util.dart';
import 'package:spotify_clone/features/authentication/authentication.dart';

class AuthService {
  Future<AuthResponse> register({required UserModel user}) async {
    var message = '';
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );
      message = "User registered successfully.";
      log.i("(Auth Service) $message");
      return AuthResponse(success: message);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        message = "The password provided is too weak.";
        log.e("(Auth Service) $message");
        return AuthResponse(error: message);
      } else if (e.code == 'email-already-in-use') {
        message = "The account already exists for that email.";
        log.e("(Auth Service) $message");
        return AuthResponse(error: message);
      } else {
        log.e("(Auth Service) ${e.message}");
        return AuthResponse(error: e.message);
      }
    }
  }

  Future<AuthResponse> login({required UserModel user}) async {
    var message = '';
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );
      message = "User logged in successfully.";
      log.i("(Auth Service) $message");
      return AuthResponse(success: message);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        message = "No user found for that email.";
        log.e("(Auth Service) $message");
        return AuthResponse(error: message);
      } else if (e.code == 'wrong-password') {
        message = "Wrong password provided for that user.";
        log.e("(Auth Service) $message");
        return AuthResponse(error: message);
      } else {
        log.e("(Auth Service) ${e.message}");
        return AuthResponse(error: e.message);
      }
    }
  }
}
