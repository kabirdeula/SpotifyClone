import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/constants.dart';

import 'themes.dart';

class AppThemes {
  static final ThemeData lightTheme = _buildTheme(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.background,
  );

  static final ThemeData darkTheme = _buildTheme(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.backgroundDark,
  );

  // Helper method to build themes with shared properties
  static ThemeData _buildTheme({
    required Brightness brightness,
    required Color scaffoldBackgroundColor,
  }) {
    return ThemeData(
      brightness: brightness,
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      elevatedButtonTheme: _elevatedButtonTheme,
      inputDecorationTheme: _inputDecorationTheme,
      tabBarTheme: _tabBarTheme,
      fontFamily: 'Montserrat',
      useMaterial3: true,
    );
  }

  // Button styles shared between themes
  static final _elevatedButtonTheme = ButtonStyles.elevatedButton();
  static final _inputDecorationTheme =
      AppInputDecorations.defaultConfig().buildInputDecorationTheme();

  static final _tabBarTheme =
      CustomTabBarTheme.defaultConfig().buildTabBarTheme();
}
