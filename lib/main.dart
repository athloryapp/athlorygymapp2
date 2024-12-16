import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'locale_provider.dart';
import 'theme_provider.dart';
import 'auth_provider.dart'; // AuthProvider importieren
import 'home_page.dart';
import 'login_page.dart';
import 'registration_page.dart';
import 'settings_page.dart';
import 'profile_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LocaleProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()), // AuthProvider hinzufügen
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final localeProvider = Provider.of<LocaleProvider>(context);

    return MaterialApp(
      title: 'Athlory Gym App',
      theme: themeProvider.currentTheme,
      locale: localeProvider.currentLocale,
      supportedLocales: const [Locale('en'), Locale('de')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegistrationPage(),
        '/settings': (context) => const SettingsPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}