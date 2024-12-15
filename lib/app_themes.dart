import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppThemes {
  // Apple-konformes Light Mode Farbschema
  static final ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: AppColors.lightPrimary, // Hauptfarbe
      background: AppColors.lightBackground, // Hintergrundfarbe
      surface: AppColors.lightSurface, // Oberfläche
      onPrimary: AppColors.lightTextSecondary, // Textfarbe auf Primär
      onBackground: AppColors.lightTextPrimary, // Textfarbe auf Hintergrund
    ),
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightPrimary,
      foregroundColor: AppColors.lightTextSecondary, // Weißer Text
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.lightTextPrimary, fontSize: 18),
      bodyMedium: TextStyle(color: AppColors.lightTextPrimary, fontSize: 16),
    ),
    useMaterial3: true,
  );

  // Dunkles Design bleibt unberührt
  static final ThemeData darkGreyTheme = ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF253745),
      background: Color(0xFF11212D),
      surface: Color(0xFF4A5C6A),
      onPrimary: Color(0xFFCCD0CF),
    ),
    scaffoldBackgroundColor: const Color(0xFF06141B),
    useMaterial3: true,
  );
}