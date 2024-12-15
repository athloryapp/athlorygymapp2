import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'locale_provider.dart'; // Sprachwechsel-Provider
import 'app_localizations.dart'; // Lokalisierungs-Klasse
import 'app_themes.dart'; // App Themes
import 'theme_provider.dart'; // Theme Provider

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LocaleProvider()),
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
    final localeProvider = Provider.of<LocaleProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'Athlory Gym App',
      locale: localeProvider.currentLocale, // Aktuelle Sprache
      supportedLocales: const [Locale('en'), Locale('de')],
      theme: themeProvider.currentTheme, // Aktuelles Theme
      localizationsDelegates: const [
        AppLocalizationsDelegate(), // Eigene Lokalisierung
        GlobalMaterialLocalizations.delegate, // Material Lokalisierung
        GlobalWidgetsLocalizations.delegate, // Widgets Lokalisierung
        GlobalCupertinoLocalizations.delegate, // Cupertino Lokalisierung
      ],
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final localeProvider = Provider.of<LocaleProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    final appLocalization = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(appLocalization.translate('appTitle')),
        actions: [
          IconButton(
            icon: Icon(
              localeProvider.currentLocale.languageCode == 'en'
                  ? Icons.flag
                  : Icons.flag_circle,
            ),
            onPressed: localeProvider.toggleLocale,
            tooltip: appLocalization.translate('toggleLanguage'),
          ),
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: themeProvider.toggleTheme, // Theme wechseln
            tooltip: appLocalization.translate('toggleTheme'),
          ),
        ],
      ),
      body: Center(
        child: Text(appLocalization.translate('hello')),
      ),
    );
  }
}