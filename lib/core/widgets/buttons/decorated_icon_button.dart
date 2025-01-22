import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/constants.dart';
import 'package:spotify_clone/core/widgets/app_text.dart';

class DecoratedIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final String text;

  const DecoratedIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.text,
  });

  factory DecoratedIconButton.lightMode({required VoidCallback onPressed}) {
    return DecoratedIconButton(
      icon: Icons.light_mode_outlined,
      onPressed: onPressed,
      text: 'Light Mode',
    );
  }

  factory DecoratedIconButton.darkMode({required VoidCallback onPressed}) {
    return DecoratedIconButton(
      icon: Icons.dark_mode_outlined,
      onPressed: onPressed,
      text: 'Dark Mode',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.semiTransparent,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: onPressed,
                icon: Icon(icon, color: Colors.white, size: 30),
              ),
            ),
          ),
        ),
        AppText(text: text),
      ],
    );
  }
}
