import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:spotify_clone/core/constants/constants.dart';
import 'package:spotify_clone/core/themes/themes.dart';
import 'package:spotify_clone/core/widgets/widgets.dart';

part 'onboarding_screen_mixin.dart';

class OnboardingScreen extends StatelessWidget with OnboardingScreenMixin {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return Scaffold(
      body: Stack(
        children: [
          _buildBackgroundImage(),
          _buildOverlay(),
          _buildContent(),
        ],
      ),
    );
  }
}
