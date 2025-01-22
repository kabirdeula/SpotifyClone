import 'package:spotify_clone/features/authentication/authentication.dart';
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
      GoRoute(
        path: AppRoutes.welcome.path,
        name: AppRoutes.welcome.name,
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.login.path,
        name: AppRoutes.login.name,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.register.path,
        name: AppRoutes.register.name,
        builder: (context, state) => const SignUpScreen(),
      ),
    ],
  );
}
