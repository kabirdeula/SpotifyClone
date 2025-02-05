import 'package:spotify_clone/core/dependency_injection/dependency_injection.dart';
import 'package:spotify_clone/features/authentication/authentication.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<void> login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<AuthResponse> register({required UserModel user}) async{
    var result = await sl<AuthService>().register(user: user);
    return result;
  }
}
