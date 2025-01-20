import 'package:flutter/material.dart';

/// A utility class for managing application-wide text styles.
///
/// Centralizes `TextStyle` definitions for consistency and maintainability.
class AppTypography {
  // Helper method to create a TextStyle
  static TextStyle _baseStyle({
    required double fontSize,
    required FontWeight fontWeight,
    Color? color,
    double? lineHeight,
    double letterSpacing = 1.0,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: lineHeight,
      letterSpacing: letterSpacing,
    );
  }

  // * Headline Styles
  static TextStyle headline1({Color? color}) => _baseStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: color,
        lineHeight: 1.5,
      );

  static TextStyle headline2({Color? color}) => _baseStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: color,
        lineHeight: 1.4,
      );

  static TextStyle headline3({Color? color}) => _baseStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: color,
        lineHeight: 1.3,
      );

  // * Body Text Styles
  static TextStyle bodyText1({Color? color}) => _baseStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: color,
        lineHeight: 1.5,
      );

  static TextStyle bodyText2({Color? color}) => _baseStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: color,
        lineHeight: 1.4,
      );

  static TextStyle caption({Color? color}) => _baseStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: color,
        lineHeight: 1.3,
      );

  // * Button Text Styles
  static TextStyle button({Color? color}) => _baseStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: color,
      );

  // * Input Field Styles
  static TextStyle input({Color? color}) => _baseStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: color,
      );

  static TextStyle inputPlaceholder({Color? color}) => _baseStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: color,
      );
}
