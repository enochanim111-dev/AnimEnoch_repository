// =============================================================================
// C1 (6 marks) — Theme
// Variant 9: Movie Night
// Primary: #37474F, Secondary: #FF8F00
// =============================================================================
import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF37474F);
  static const Color secondary = Color(0xFFFF8F00);

  static ThemeData light() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primary,
        brightness: Brightness.light,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: primary,
        foregroundColor: Colors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: secondary,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}

/// Screen widths (logical pixels) where the layout changes.
class Breakpoints {
  static const double tablet = 600;
}