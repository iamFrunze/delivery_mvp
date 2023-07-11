import 'package:flutter/cupertino.dart';

import '../gen/fonts.gen.dart';

/// Font weight description
// 100: Thin;
// 200: Extra Light (Ultra Light);
// 300: Light;
// 400: Normal;
// 500: Medium;
// 600: Semi Bold (Demi Bold);
// 700: Bold;
// 800: Extra Bold (Ultra Bold);
// 900: Black (Heavy).

class AppTypography {
  static const TextStyle splashTitle = TextStyle(
    fontSize: 24.0,
    fontFamily: FontFamily.poppins,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle splashSubTitle = TextStyle(
    fontSize: 16.0,
    fontFamily: FontFamily.poppins,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 10.0,
    fontFamily: FontFamily.poppins,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 12.0,
    fontFamily: FontFamily.poppins,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 14.0,
    fontFamily: FontFamily.poppins,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle titleMedium = TextStyle(
    fontSize: 16.0,
    fontFamily: FontFamily.poppins,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle titleLarge = TextStyle(
    fontSize: 18.0,
    fontFamily: FontFamily.poppins,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontSize: 20.0,
    fontFamily: FontFamily.poppins,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontSize: 24.0,
    fontFamily: FontFamily.poppins,
    fontWeight: FontWeight.w400,
  );
}
