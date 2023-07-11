import 'package:flutter/material.dart';

abstract class AppTheme {

  ThemeData buildTheme();

  FilledButtonThemeData buildFilledThemeData();

  ColorScheme buildColorScheme();

  TextTheme buildTextTheme();

  TextButtonThemeData buildTextButtonThemeData();

}
