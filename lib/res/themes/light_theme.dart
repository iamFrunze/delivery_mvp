import 'package:flutter/material.dart';

import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import '../app_dimensions.dart';
import 'themes.dart';

class LightThemeData extends AppTheme {
  static ThemeData get base => ThemeData.light();

  @override
  ThemeData buildTheme() {
    return base.copyWith(
      filledButtonTheme: buildFilledThemeData(),
      textButtonTheme: buildTextButtonThemeData(),
      textTheme: buildTextTheme(),
    );
  }

  @override
  FilledButtonThemeData buildFilledThemeData() {
    return FilledButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppDimensions.buttonCornerRadius,
            ),
          ),
        ),
        textStyle: MaterialStateProperty.all(base.textTheme.labelLarge),
        backgroundColor: MaterialStateProperty.resolveWith(
          (Set<MaterialState> states) {
            return states.contains(MaterialState.disabled)
                ? ColorName.disabled
                : ColorName.primary;
          },
        ),
      ),
    );
  }

  @override
  ColorScheme buildColorScheme() {
    return base.colorScheme;
  }

  @override
  TextTheme buildTextTheme() {
    return base.textTheme.copyWith(
      labelLarge: base.textTheme.labelLarge?.copyWith(
        fontFamily: FontFamily.poppins,
      ),
    );
  }

  @override
  TextButtonThemeData buildTextButtonThemeData() {
    return TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          base.textTheme.labelLarge,
        ),
      ),
    );
  }
}
