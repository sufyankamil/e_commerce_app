import 'package:flutter/material.dart';

class EColors {
  EColors._(); // To avoid creating an instance of this class

  // App Basic Colors
  static const Color primaryColor = Color(0xFF374ED5);
  static const Color secondaryColor = Color(0xFFFFE24B);
  static const Color accentColor = Color(0xFFb0c7ff);

  // Text Colors
  static const Color textPrimaryColor = Color(0xFF333333);
  static const Color textSecondaryColor = Color(0xFF757575);
  static const Color textWhiteColor = Colors.white;

  // Background Colors
  static const Color light = Color(0xFFF6f6f6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackgroud = Color(0xFFF3F5FF);

  // Background Container Colors
  static const Color lightContainer = Color(0xFFF6f6f6);
  static Color darkContainer = EColors.white.withOpacity(0.1);

  // Button Colors
  static const Color buttonPrimaryColor = Color(0xFF4b68FF);
  static const Color buttonSecondaryColor = Color(0xFF6C757D);
  static const Color buttonWhiteColor = Color(0xFF4c4c4c);

  // Bordered Colors
  static const Color borderPrimary = Color(0xFFD9d9d9);
  static const Color borderSecondary = Color(0xFFE6e6e6);

  // Error and Validation Colors
  static const Color errorColor = Color(0xFFD32F2F);
  static const Color successColor = Color(0xFF388E3C);
  static const Color warningColor = Color(0xFFf57c00);
  static const Color infoColor = Color(0xFF1976D2);

  // Gradient colors
  static const Gradient linearGradient = LinearGradient(
    colors: [Color(0xFF3F51B5), Color(0xFF9C27B0)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  //Neutral Shades Colors
  static const Color black = Color(0xFF232323);
  static const Color white = Color(0xFFFFFFFF);
  static const Color grey = Color(0xFFB3B2B2);
  static const Color greyLight = Color(0xFFE0E0E0);
  static const Color greyDark = Color(0xFF616161);
}
