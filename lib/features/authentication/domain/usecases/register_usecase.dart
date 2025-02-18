import 'package:spotify_clone/core/dependency_injection/dependency_injection.dart';
import 'package:spotify_clone/features/authentication/authentication.dart';

class RegisterUsecase {
  Future<AuthResponse> call({required UserModel user}) async {
    return await sl<AuthRepository>().register(user: user);
  }
}
