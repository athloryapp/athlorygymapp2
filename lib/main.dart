import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'locale_provider.dart'; // LocaleProvider importieren
import 'theme_provider.dart'; // ThemeProvider importieren
import 'home_page.dart'; // Die Startseite
import 'settings_page.dart'; // SettingsPage importieren
import 'profile_page.dart'; // ProfilPage importieren

// Füge die fehlenden Imports hinzu
import 'package:flutter_localizations/flutter_localizations.dart'; // Lokalisierungs-Pakete

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LocaleProvider()), // LocaleProvider hinzufügen
        ChangeNotifierProvider(create: (_) => ThemeProvider()), // ThemeProvider hinzufügen
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
      theme: themeProvider.currentTheme, // Aktuelles Theme
      locale: localeProvider.currentLocale, // Aktuelle Sprache
      supportedLocales: const [Locale('en'), Locale('de')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate, // Material Design Lokalisierung
        GlobalWidgetsLocalizations.delegate, // Widgets Lokalisierung
        GlobalCupertinoLocalizations.delegate, // Cupertino Lokalisierung
      ],
      home: const HomePage(), // Startseite
      routes: {
        '/settings': (context) => const SettingsPage(), // SettingsPage Route
        '/profile': (context) => const ProfilePage(), // ProfilPage Route
      },
    );
  }
}