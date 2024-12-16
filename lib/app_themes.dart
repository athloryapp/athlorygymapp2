import 'package:flutter/material.dart';
import 'app_colors.dart'; // Importiere die Farben
import 'app_text_styles.dart'; // Importiere die Textstile

class AppThemes {
  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: AppColors.lightPrimary,
      background: AppColors.lightBackground,
      surface: AppColors.lightSurface,
      onPrimary: AppColors.lightTextPrimary,
    ),
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    textTheme: TextTheme(
      bodyLarge: AppTextStyles.bodyLarge,
      bodyMedium: AppTextStyles.bodyMedium,
      bodySmall: AppTextStyles.bodySmall,
      headlineLarge: AppTextStyles.headlineLarge,
      headlineMedium: AppTextStyles.headlineMedium,
      headlineSmall: AppTextStyles.headlineSmall,
    ),
    useMaterial3: true,
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
      primary: AppColors.darkPrimary,
      background: AppColors.darkBackground,
      surface: AppColors.darkSurface,
      onPrimary: AppColors.darkTextPrimary,
    ),
    scaffoldBackgroundColor: AppColors.darkScaffoldBackground,
    textTheme: TextTheme(
      bodyLarge: AppTextStyles.darkBodyLarge,
      bodyMedium: AppTextStyles.darkBodyMedium,
      bodySmall: AppTextStyles.darkBodySmall,
      headlineLarge: AppTextStyles.darkHeadlineLarge,
      headlineMedium: AppTextStyles.darkHeadlineMedium,
      headlineSmall: AppTextStyles.darkHeadlineSmall,
    ),
    useMaterial3: true,
  );
}