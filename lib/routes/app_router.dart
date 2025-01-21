import 'package:spotify_clone/features/onboarding/onboarding.dart';
import 'package:spotify_clone/features/theme_preference/theme_preference.dart';

import 'routes.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.initial.path,
    routes: [
      GoRoute(
        path: AppRoutes.initial.path,
        name: AppRoutes.initial.name,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: AppRoutes.themePreference.path,
        name: AppRoutes.themePreference.name,
        builder: (context, state) => const ThemePreferenceScreen(),
      ),
    ],
  );
}
