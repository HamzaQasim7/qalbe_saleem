import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: const TextTheme(
        displayMedium: TextStyle(
          color: Colors.white,
          fontSize: 14, // Use a fixed size or implement responsive sizing
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
