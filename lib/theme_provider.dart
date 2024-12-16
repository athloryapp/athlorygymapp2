import 'package:flutter/material.dart';
import 'app_themes.dart';  // Hier werden die verschiedenen Themes importiert

class ThemeProvider extends ChangeNotifier {
  ThemeData _currentTheme = AppThemes.lightTheme; // Standard-Theme

  ThemeData get currentTheme => _currentTheme;

  void toggleTheme() {
    // Wechsel zwischen den Themes
    if (_currentTheme == AppThemes.lightTheme) {
      _currentTheme = AppThemes.darkTheme;  // Wechsel zu einem dunklen Theme
    } else {
      _currentTheme = AppThemes.lightTheme;  // Zurück zum hellen Theme
    }
    notifyListeners();
  }
}