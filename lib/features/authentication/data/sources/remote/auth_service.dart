import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_clone/core/util/util.dart';
import 'package:spotify_clone/features/authentication/authentication.dart';

class AuthService {
  Future<void> register({required UserModel user}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );
      
      log.i("(Auth Service) User registered successfully.");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        log.e("(Auth Service) The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
        log.e("(Auth Service) The account already exists for that email.");
      }
    }
  }
}
