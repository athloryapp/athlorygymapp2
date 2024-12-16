import 'package:flutter/material.dart';
import 'app_colors.dart';

class BasePage extends StatelessWidget {
  final String title;
  final Widget body;

  const BasePage({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              color: isDarkTheme ? AppColors.darkTextSecondary : AppColors.lightTextSecondary,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: isDarkTheme ? AppColors.darkBackground : AppColors.lightBackground,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: isDarkTheme ? AppColors.darkSurface : AppColors.lightSurface,
                ),
                child: Text(
                  'Menü',
                  style: TextStyle(
                    color: isDarkTheme
                        ? AppColors.darkTextSecondary
                        : AppColors.lightTextSecondary,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pushNamed(context, '/settings');
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profil'),
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
              ),
            ],
          ),
        ),
      ),
      body: body,
    );
  }
}