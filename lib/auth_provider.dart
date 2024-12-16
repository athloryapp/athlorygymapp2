import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  String _email = '';
  String _password = '';

  bool get isRegistered => _email.isNotEmpty && _password.isNotEmpty;

  // Registrierung
  void register(String email, String password) {
    _email = email;
    _password = password;
    notifyListeners();
  }

  // Login-Prüfung
  bool login(String email, String password) {
    return email == _email && password == _password;
  }
}