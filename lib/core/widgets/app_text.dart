import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/constants.dart';
import 'package:spotify_clone/core/themes/themes.dart';

/// A customizable text widget that centralizes text styling and properties.
///
/// This widget helps enforce consistent text appearance across the app.
/// while providing flexibility for customization.
class AppText extends StatelessWidget {
  /// The text to be displayed.
  final String text;

  /// The custom text style to apply to the text.
  final TextStyle? style;

  /// The predefined style to apply to the text.
  final AppTextStyle? appTextStyle;

  /// The color of the text.
  final Color color;

  /// Defines how the text should align within its container.
  final TextAlign textAlign;

  /// Defines how overflowing text is handled.
  final TextOverflow overflow;

  /// The maximum number of lines the text can occupy.
  final int? maxLines;

  /// Creates an [AppText] widget.
  const AppText({
    super.key,
    required this.text,
    this.style,
    this.appTextStyle,
    this.color = AppColors.offWhite,
    this.textAlign = TextAlign.center,
    this.overflow = TextOverflow.clip,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final effectiveColor = color == AppColors.offWhite
        ? (isDarkMode ? AppColors.offWhite : AppColors.titleActive)
        : color;
    final predefinedStyle = () {
      switch (appTextStyle) {
        case AppTextStyle.headline:
          return AppTypography.headline1(color: effectiveColor);
        case AppTextStyle.subtitle:
          return AppTypography.headline2(color: effectiveColor);
        case AppTextStyle.body:
          return AppTypography.bodyText1(color: effectiveColor);
        case AppTextStyle.caption:
          return AppTypography.caption(color: effectiveColor);
        case AppTextStyle.button:
          return AppTypography.button(color: effectiveColor);
        default:
          return AppTypography.bodyText2(color: effectiveColor);
      }
    }();

    return Text(
      text,
      style: style ?? predefinedStyle,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}

/// Defines the various text styles used throughout the app.
///
/// These styles map to predefined `TextTheme` styles in the app's theme.
enum AppTextStyle {
  /// Use for prominent headings or titles.
  headline,

  /// Use for secondary headings or subtitles.
  subtitle,

  /// Use for standard body text.
  body,

  /// Use for captions or small, auxiliary text.
  caption,
  button,
}
