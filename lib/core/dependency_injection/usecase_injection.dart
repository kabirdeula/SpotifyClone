import 'package:spotify_clone/features/authentication/authentication.dart';

import 'dependency_injection.dart';

setupUsecaseInjection(){
  sl.registerSingleton<RegisterUsecase>(RegisterUsecase());
  sl.registerSingleton<LoginUsecase>(LoginUsecase());
}