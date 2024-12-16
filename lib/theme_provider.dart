import 'package:flutter/material.dart';
import 'app_themes.dart'; // Importiere die Themes

class ThemeProvider extends ChangeNotifier {
  ThemeData _currentTheme = AppThemes.lightTheme; // Standard-Theme ist hell

  ThemeData get currentTheme => _currentTheme;

  void toggleTheme() {
    if (_currentTheme == AppThemes.lightTheme) {
      _currentTheme = AppThemes.darkTheme; // Zu Dunkelthema wechseln
    } else {
      _currentTheme = AppThemes.lightTheme; // Zurück zum Hellthema
    }
    notifyListeners();
  }
}