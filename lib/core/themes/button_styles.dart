import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/constants.dart';

/// Utility class to manage button styles.
///
/// Provides static methods to create predefined button styles.
class ButtonStyles {
  static ElevatedButtonThemeData elevatedButton({
    Color color = AppColors.primary,
    EdgeInsetsGeometry padding = const EdgeInsets.all(16.0),
    double borderRadius = 8,
  }) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
