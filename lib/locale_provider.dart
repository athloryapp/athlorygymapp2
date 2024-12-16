import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _currentLocale = const Locale('en');  // Standard Sprache ist Englisch

  Locale get currentLocale => _currentLocale;

  void toggleLocale() {
    _currentLocale = (_currentLocale.languageCode == 'en')
        ? const Locale('de')
        : const Locale('en');
    notifyListeners();
  }
}