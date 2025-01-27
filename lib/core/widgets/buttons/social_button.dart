import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/constants.dart';

class SocialButton extends StatelessWidget {
  final String image;
  const SocialButton({super.key, required this.image});

  factory SocialButton.google() => const SocialButton(image: AssetPaths.google);
  factory SocialButton.apple() => const SocialButton(image: AssetPaths.apple);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 50, height: 50, child: Image.asset(image));
  }
}
