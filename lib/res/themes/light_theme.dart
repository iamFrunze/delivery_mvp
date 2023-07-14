import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../utils/decorated_input_border.dart';
import '../app_dimensions.dart';
import 'themes.dart';

class LightThemeData extends AppTheme {
  static ThemeData get base => ThemeData.light();

  @override
  ThemeData buildTheme() {
    return base.copyWith(
      brightness: Brightness.light,
      primaryColor: ColorName.primary,
      scaffoldBackgroundColor: ColorName.white,
      appBarTheme: buildAppBarTheme(),
      filledButtonTheme: buildFilledThemeData(),
      textButtonTheme: buildTextButtonThemeData(),
      textTheme: buildTextTheme(),
      inputDecorationTheme: buildInputDecorationTheme(),
      textSelectionTheme: buildTextSelectionThemeData(),
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
        foregroundColor: MaterialStateProperty.all(ColorName.white),
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
        color: ColorName.text,
      ),
      labelMedium: base.textTheme.labelMedium?.copyWith(
        fontFamily: FontFamily.poppins,
        color: ColorName.text,
      ),
      bodySmall: base.textTheme.bodySmall?.copyWith(
        fontFamily: FontFamily.poppins,
      ),
      bodyMedium: base.textTheme.bodyMedium?.copyWith(
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

  OutlineInputBorder get _enabledBorder => const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppDimensions.textFieldCornerRadius,
          ),
        ),
        borderSide: BorderSide(color: ColorName.disabled),
      );

  DecoratedInputBorder get _focusedBorder => DecoratedInputBorder(
        child: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              AppDimensions.textFieldCornerRadius,
            ),
          ),
          borderSide: BorderSide(color: ColorName.primary),
        ),
        shadow: const BoxShadow(
          color: ColorName.textFieldBoxShadow,
          blurRadius: 4,
        ),
      );

  @override
  InputDecorationTheme buildInputDecorationTheme() {
    return base.inputDecorationTheme.copyWith(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      hintStyle: base.textTheme.labelMedium?.copyWith(
        fontWeight: FontWeight.w400,
        color: ColorName.textFieldHintColor,
      ),
      enabledBorder: _enabledBorder,
      focusedBorder: _focusedBorder,
    );
  }

  @override
  TextSelectionThemeData buildTextSelectionThemeData() {
    return base.textSelectionTheme.copyWith(
      cursorColor: ColorName.textFieldHintColor,
    );
  }

  @override
  AppBarTheme buildAppBarTheme() {
    return base.appBarTheme.copyWith(
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarColor: ColorName.primary,
      ),
    );
  }
}
