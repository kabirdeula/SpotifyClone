import 'package:spotify_clone/core/dependency_injection/dependency_injection.dart';
import 'package:spotify_clone/features/authentication/authentication.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<AuthResponse> login({required UserModel user}) async {
    var result = await sl<AuthService>().login(user: user);
    return result;
  }

  @override
  Future<AuthResponse> register({required UserModel user}) async {
    var result = await sl<AuthService>().register(user: user);
    return result;
  }
}
