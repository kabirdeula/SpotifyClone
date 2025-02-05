import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/constants.dart';

class SocialButton extends StatelessWidget {
  final String image;
  const SocialButton({super.key, required this.image});

  factory SocialButton.google() => const SocialButton(image: AssetPaths.google);
  factory SocialButton.apple() => const SocialButton(image: AssetPaths.apple);

  @override
  Widget build(BuildContext context) {
    String displayImage = image;

    if (image == AssetPaths.apple) {
      final isDarkMode = Theme.of(context).brightness == Brightness.dark;
      displayImage = isDarkMode ? AssetPaths.appleWhite : AssetPaths.apple;
    }
    return SizedBox(width: 50, height: 50, child: Image.asset(displayImage));
  }
}
