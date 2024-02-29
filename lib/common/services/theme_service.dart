import "package:flutter/material.dart";

import "logger_service.dart";

class ThemeService {
  static final ThemeService _instance = ThemeService._internal();

  factory ThemeService() {
    return _instance;
  }

  ThemeData _currentTheme = LightTheme()._themeData;

  ThemeService._internal() {
    LoggerService().simple("THEME SERVICE INITIALIZED");
  }

  ThemeData getCurrentThemeData() {
    return _currentTheme;
  }

  void updateTheme(ThemeData themeData) {
    _currentTheme = themeData;
  }
}

class LightTheme {
  static const Color _primary = Color(0xFF00736D);
  static const Color _onSecondary = Color(0xFF80B9B6);

  static const ColorScheme _colorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: _primary,
    onPrimary: Colors.white,
    secondary: Colors.white,
    onSecondary: _onSecondary,
    error: Colors.red,
    onError: Colors.white,
    background: Colors.white,
    onBackground: _onSecondary,
    surface: _primary,
    onSurface: Colors.white,
  );

  final ThemeData _themeData = ThemeData(
    colorScheme: _colorScheme,
    brightness: Brightness.light,
    scaffoldBackgroundColor: _colorScheme.background,
    canvasColor: _colorScheme.background,
    dialogBackgroundColor: _colorScheme.surface,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: _colorScheme.primary,
      unselectedItemColor: Colors.grey.shade300,
      elevation: 4,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(
          Colors.white,
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 96,
        fontWeight: FontWeight.w300,
        color: Colors.black,
      ),
      displayMedium: TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      displaySmall: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      headlineMedium: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.black87,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.black87,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Colors.black54,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
  );

  ThemeData get themeData => _themeData;
}
