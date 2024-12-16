import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_provider.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  void _register() {
    if (_passwordController.text == _confirmPasswordController.text) {
      final authProvider = Provider.of<AuthProvider>(context, listen: false);
      authProvider.register(_emailController.text, _passwordController.text);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Registrierung erfolgreich!')),
      );

      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacementNamed(context, '/login');
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Passwörter stimmen nicht überein!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registrierung')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Noch kein Konto? Registrieren',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Passwort'),
                obscureText: true,
              ),
              TextField(
                controller: _confirmPasswordController,
                decoration: const InputDecoration(labelText: 'Passwort bestätigen'),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _register,
                child: const Text('Registrieren'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}