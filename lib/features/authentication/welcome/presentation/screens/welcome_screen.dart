import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/constants.dart';
import 'package:spotify_clone/core/widgets/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            spacing: 24,
            children: [
              brandingImage(),
              AppText(
                text: 'Enjoy Listening To Music',
                color: Colors.black,
                appTextStyle: AppTextStyle.subtitle,
              ),
              AppText(
                text:
                    'Spotify is a proprietary Swedish audio streaming and media services provider',
                color: Colors.grey,
                appTextStyle: AppTextStyle.body,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 12,
                children: [
                  Expanded(
                    child: CustomElevatedButton(
                      onPressed: () {},
                      label: 'Register',
                    ),
                  ),
                  Expanded(
                    child: CustomElevatedButton(
                      onPressed: () {},
                      label: 'Sign in',
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.label,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
