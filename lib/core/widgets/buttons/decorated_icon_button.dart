import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/constants.dart';

class DecoratedIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const DecoratedIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  factory DecoratedIconButton.lightMode({required VoidCallback onPressed}) {
    return DecoratedIconButton(
      icon: Icons.light_mode_outlined,
      onPressed: onPressed,
    );
  }

  factory DecoratedIconButton.darkMode({required VoidCallback onPressed}) {
    return DecoratedIconButton(
      icon: Icons.dark_mode_outlined,
      onPressed: onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipOval(
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
    );
  }
}
