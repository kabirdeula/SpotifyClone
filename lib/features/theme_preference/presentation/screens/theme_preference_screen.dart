import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/constants.dart';
import 'package:spotify_clone/core/widgets/widgets.dart';

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
            DecoratedIconButton.darkMode(onPressed: () {}),
            DecoratedIconButton.lightMode(onPressed: () {}),
          ],
        ),
        Spacer(),
        CustomElevatedButton(onPressed: () {}, label: "Continue"),
      ],
    );
  }
}
