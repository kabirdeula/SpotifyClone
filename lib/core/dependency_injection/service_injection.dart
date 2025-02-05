import 'package:spotify_clone/features/authentication/authentication.dart';

import 'dependency_injection.dart';

void setupServiceInjection(){
  sl.registerSingleton<AuthService>(AuthService());
}