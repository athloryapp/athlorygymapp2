import 'package:flutter/material.dart';
import 'app_themes.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _currentTheme = AppThemes.lightTheme;

  ThemeData get currentTheme => _currentTheme;

  void toggleTheme() {
    if (_currentTheme == AppThemes.lightTheme) {
      _currentTheme = AppThemes.darkGreyTheme; // Wechsel zum zweiten Theme
    } else {
      _currentTheme = AppThemes.lightTheme; // Wechsel zurück zum ersten Theme
    }
    notifyListeners();
  }
}