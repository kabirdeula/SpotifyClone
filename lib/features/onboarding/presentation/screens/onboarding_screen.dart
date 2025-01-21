import 'package:flutter/material.dart';

import 'package:spotify_clone/core/constants/constants.dart';
import 'package:spotify_clone/core/widgets/widgets.dart';
import 'package:spotify_clone/routes/routes.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StackScreenLayout(
      backgroundImage: AssetPaths.onboardingBackground,
      children: [
        brandingImage(),
        Spacer(),
        titleWidget(title: AppStrings.onboardingTitle),
        smallSpacer,
        AppText(text: AppStrings.onboardingSubtitle, color: AppColors.label),
        largeSpacer,
        CustomElevatedButton(
          onPressed: () => context.go(AppRoutes.themePreference.path),
          label: AppStrings.getStartedButton,
        ),
      ],
    );
  }
}
