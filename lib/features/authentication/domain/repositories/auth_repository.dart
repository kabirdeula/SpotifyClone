import 'package:spotify_clone/features/authentication/authentication.dart';

abstract class AuthRepository {
  Future<void> login();
  Future<void> register({required UserModel user});
}
