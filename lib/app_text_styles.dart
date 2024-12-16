import 'package:flutter/material.dart';
import 'app_colors.dart'; // Farben, die wir bereits definiert haben

class AppTextStyles {
  // Standard-Schriftarten
  static const TextStyle headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.lightTextPrimary, // Dunkelblauer Text für Überschriften
  );

  static const TextStyle headlineMedium = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.lightTextPrimary, // Dunkelblauer Text für mittlere Überschriften
  );

  static const TextStyle headlineSmall = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.lightTextPrimary, // Dunkelblauer Text für kleine Überschriften
  );

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppColors.lightTextPrimary, // Dunkelblauer Text für großen Text
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.lightTextPrimary, // Dunkelblauer Text für mittleren Text
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.lightTextPrimary, // Dunkelblauer Text für kleinen Text
  );

  // Text-Stile für das Dunkelthema
  static const TextStyle darkHeadlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.darkText, // Weißer Text für Überschriften im Dunkelthema
  );

  static const TextStyle darkHeadlineMedium = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.darkText, // Weißer Text für mittlere Überschriften im Dunkelthema
  );

  static const TextStyle darkHeadlineSmall = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.darkText, // Weißer Text für kleine Überschriften im Dunkelthema
  );

  static const TextStyle darkBodyLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppColors.darkText, // Weißer Text für großen Text im Dunkelthema
  );

  static const TextStyle darkBodyMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.darkText, // Weißer Text für mittleren Text im Dunkelthema
  );

  static const TextStyle darkBodySmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.darkText, // Weißer Text für kleinen Text im Dunkelthema
  );
}