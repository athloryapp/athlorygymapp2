import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/login'); // Automatisch zur Login-Seite
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Athlory Gym App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/dumbbell.png',
              width: 100, // Größe des Bildes
            ),
            const SizedBox(height: 20),
            const Text('Willkommen zur Athlory Gym App'),
          ],
        ),
      ),
    );
  }
}