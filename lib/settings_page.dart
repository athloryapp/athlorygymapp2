import 'package:flutter/material.dart';
import 'base_page.dart';
import 'package:provider/provider.dart';
import 'locale_provider.dart';
import 'theme_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localeProvider = Provider.of<LocaleProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);

    return BasePage(
      title: 'Settings',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.language),
              onPressed: () {
                localeProvider.toggleLocale();
              },
            ),
            TextButton(
              onPressed: () {
                themeProvider.toggleTheme();
              },
              child: const Text('Change Theme'),
            ),
          ],
        ),
      ),
    );
  }
}