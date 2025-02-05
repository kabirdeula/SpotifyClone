import 'package:spotify_clone/features/authentication/authentication.dart';

abstract class AuthRepository {
  Future<AuthResponse> login({required UserModel user});
  Future<AuthResponse> register({required UserModel user});
}
