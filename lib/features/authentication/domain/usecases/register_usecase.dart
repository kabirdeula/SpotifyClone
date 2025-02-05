import 'package:spotify_clone/core/dependency_injection/dependency_injection.dart';
import 'package:spotify_clone/features/authentication/authentication.dart';

class RegisterUsecase {
  Future<void> call({required UserModel user}){
    return sl<AuthRepository>().register(user: user);
  }
}