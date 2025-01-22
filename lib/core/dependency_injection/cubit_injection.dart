import 'package:spotify_clone/features/theme_preference/theme_preference.dart';

import 'dependency_injection.dart';

void setupCubitInjection() {
  sl.registerSingleton<ThemeCubit>(ThemeCubit());
}
