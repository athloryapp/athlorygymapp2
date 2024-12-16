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
        title: Text(
          title,
          style: TextStyle(
            color: isDarkTheme ? AppColors.darkTextSecondary : AppColors.lightTextSecondary,
          ),
        ),
        backgroundColor: isDarkTheme ? AppColors.darkPrimary : AppColors.lightPrimary,
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
          color: isDarkTheme
              ? AppColors.darkBackground
              : AppColors.lightBackground, // Hintergrundfarbe des Menüs
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: isDarkTheme
                      ? AppColors.darkSurface
                      : AppColors.lightSurface, // Header-Hintergrundfarbe
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
                leading: Icon(
                  Icons.settings,
                  color: isDarkTheme
                      ? AppColors.darkTextPrimary
                      : AppColors.lightTextPrimary,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    color: isDarkTheme
                        ? AppColors.darkTextPrimary
                        : AppColors.lightTextPrimary,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/settings');
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: isDarkTheme
                      ? AppColors.darkTextPrimary
                      : AppColors.lightTextPrimary,
                ),
                title: Text(
                  'Profil',
                  style: TextStyle(
                    color: isDarkTheme
                        ? AppColors.darkTextPrimary
                        : AppColors.lightTextPrimary,
                  ),
                ),
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