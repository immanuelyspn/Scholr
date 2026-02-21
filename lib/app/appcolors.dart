import 'package:flutter/material.dart';

class AppColors {
  // Brand
  static const Color primary = Color(0xFF5B5CE2);
  static const Color primaryDark = Color(0xFF3F41C6);
  static const Color primaryLight = Color(0xFF8A8BFF);

  static const Color secondary = Color(0xFFB6B8FF);
  static const Color secondaryLight = Color(0xFFE4E5FF);

  // Backgrounds
  static const Color scaffoldBackground = Color(0xFFF5F6FB);
  static const Color cardBackground = Color(0xFFFFFFFF);
  static const Color surfaceDark = Color(0xFF0F172A);

  // Text
  static const Color textPrimary = Color(0xFF0F172A);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textMuted = Color(0xFF9CA3AF);
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  // Status
  static const Color success = Color(0xFF22C55E);
  static const Color warning = Color(0xFFFACC15);
  static const Color error = Color(0xFFEF4444);
  static const Color info = Color(0xFF38BDF8);

  // Bottom Nav
  static const Color bottomNavBackground = Color(0xFFFFFFFF);
  static const Color bottomNavSelected = primary;
  static const Color bottomNavUnselected = Color(0xFF9CA3AF);

  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primary, primaryLight],
  );

  static const LinearGradient softCardGradient = LinearGradient(
    colors: [
      Color(0xFFF7F8FF),
      Color(0xFFFFFFFF),
    ],
  );
}
