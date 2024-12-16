import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _currentLocale = const Locale('en'); // Standard-Sprache ist Englisch

  Locale get currentLocale => _currentLocale;

  void toggleLocale() {
    if (_currentLocale.languageCode == 'en') {
      _currentLocale = const Locale('de'); // Zu Deutsch wechseln
    } else {
      _currentLocale = const Locale('en'); // Zurück zu Englisch
    }
    notifyListeners();
  }
}