import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/constants.dart';
import 'package:spotify_clone/core/dependency_injection/dependency_injection.dart';
import 'package:spotify_clone/core/widgets/widgets.dart';
import 'package:spotify_clone/features/theme_preference/theme_preference.dart';
import 'package:spotify_clone/routes/routes.dart';

class ThemePreferenceScreen extends StatelessWidget {
  const ThemePreferenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StackScreenLayout(
      backgroundImage: AssetPaths.themePreferenceBackground,
      children: [
        brandingImage(),
        Spacer(),
        titleWidget(title: "Choose Mode"),
        extraLargeSpacer,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DecoratedIconButton.darkMode(
                onPressed: () => sl<ThemeCubit>().updateTheme(ThemeMode.dark)),
            DecoratedIconButton.lightMode(
                onPressed: () => sl<ThemeCubit>().updateTheme(ThemeMode.light)),
          ],
        ),
        Spacer(),
        SizedBox(
          width: double.infinity,
          child: CustomElevatedButton(
            onPressed: () => context.go(AppRoutes.welcome.path),
            label: "Continue",
          ),
        ),
      ],
    );
  }
}
