import 'package:flutter/material.dart';

/// A utility class for managing application-wide colors.
///
/// This class centralizes color definitions to ensure consistency
/// and maintainability across the application. It supports both light
/// and dark mode and color schemes.
class AppColors {
  // * Grayscale
  /// The color used for active titles. Color code: `#14142B`
  static const Color titleActive = Color(0xFF14142B);

  /// The color used for body text. Color code: `#4E4B66`
  static const Color body = Color(0xFF4E4B66);

  /// The color used for labels (Grey). Color code: `#BEBEBE`
  static const Color label = Color(0xFFBEBEBE);

  /// The placeholder text color. Color code: `#A0A3BD`
  static const Color placeholder = Color(0xFFA0A3BD);

  /// The color for input field borders or separators. Color code: `#D9DBE9`
  static const Color line = Color(0xFFD9DBE9);

  /// The background color for input fields. Color code: `#EFF0F6`
  static const Color inputBackground = Color(0xFFEFF0F6);

  /// The background color for the app. Color code: `#F2F2F2`
  static const Color background = Color(0xFFF2F2F2);

  /// The dark background color for the app. Color code: `#0D0C0C`
  static const Color backgroundDark = Color(0xFF0D0C0C);

  /// An off-white color for scaffold or screen backgrounds. Color code: `#FCFCFC`
  static const Color offWhite = Color(0xFFFCFCFC);

  // * Primary Colors
  /// The primary color used throughout the application. Color code: `#42C83C`
  static const Color primary = Color(0xFF42C83C);

  /// A darker variant of the primary color. Color code: `#081F43`
  static const Color primaryDark = Color(0xFF081F43);

  /// The primary color for dark mode. Color code: `#73A8F8`
  static const Color primaryDarkMode = Color(0xFF73A8F8);

  // * Secondary Colors
  /// The secondary color used for highlights or accents. Color code: `#76B006`
  static const Color secondary = Color(0xFF76B006);

  /// A darker variant of the secondary color. Color code: `#578105`
  static const Color secondaryDark = Color(0xFF578105);

  /// The secondary color for dark mode. Color code: `#C2F85A`
  static const Color secondaryDarkMode = Color(0xFFC2F85A);

  // * Error Colors
  /// The color used to indicate errors or critical states. Color code: `#ED2E7E`
  static const Color error = Color(0xFFED2E7E);

  /// A darker variant of the error color. Color code: `#C30052`
  static const Color errorDark = Color(0xFFC30052);

  /// The error color for dark mode. Color code: `#FF84B7`
  static const Color errorDarkMode = Color(0xFFFF84B7);

  // * Success Colors
  /// The color used to indicate success or positive states. Color code: `#00BA88`
  static const Color success = Color(0xFF00BA88);

  /// A darker variant of the success color. Color code: `#00966D`
  static const Color successDark = Color(0xFF00966D);

  /// The success color for dark mode. Color code: `#34EAB9`
  static const Color successDarkMode = Color(0xFF34EAB9);

  // * Warning Colors
  /// The color used to indicate warnings or non-critical states. Color code: `#F4B740`
  static const Color warning = Color(0xFFF4B740);

  /// A darker variant of the warning color. Color code: `#946200`
  static const Color warningDark = Color(0xFF946200);

  /// The warning color for dark mode. Color code: `#FFD789`
  static const Color warningDarkMode = Color(0xFFFFD789);

  // * Custom Colors
  /// The color used for dark navigation menu background (Dark Grey). Color code: `#343434`
  static const Color navBarDark = Color(0xFF343434);
}
