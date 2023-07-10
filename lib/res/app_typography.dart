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
    fontFamily: FontFamily.popins,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle splashSubTitle = TextStyle(
    fontSize: 16.0,
    fontFamily: FontFamily.popins,
    fontWeight: FontWeight.w500,
  );
}