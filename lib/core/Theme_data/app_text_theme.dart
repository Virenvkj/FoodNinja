import 'package:flutter/material.dart';
class AppTextTheme {

  static final headline1 = [
    _headline1TextStyle.copyWith(fontSize: 40, height: 32 / 24), // Mobile
    _headline1TextStyle.copyWith(fontSize: 42, height: 44 / 36), // Tablet
    _headline1TextStyle.copyWith(fontSize: 44, height: 64 / 44), // Desktop
  ];

  static final headline2 = [
    _headline2TextStyle.copyWith(fontSize: 32,), // Mobile
    _headline2TextStyle.copyWith(fontSize: 34,), // Tablet
    _headline2TextStyle.copyWith(fontSize: 36,), // Desktop
  ];

  static final headline3 = [
    _headline3TextStyle.copyWith(fontSize: 24,), // Mobile
    _headline3TextStyle.copyWith(fontSize: 26,), // Tablet
    _headline3TextStyle.copyWith(fontSize: 28,), // Desktop
  ];

  static final headline4 = [
    _headline4TextStyle.copyWith(fontSize: 18,), // Mobile
    _headline4TextStyle.copyWith(fontSize: 20,), // Tablet
    _headline4TextStyle.copyWith(fontSize: 22,), // Desktop
  ];

  static final bodyLarge = [
    _bodyLargeTextStyle.copyWith(fontSize: 16,), // Mobile
    _bodyLargeTextStyle.copyWith(fontSize: 20,), // Tablet
    _bodyLargeTextStyle.copyWith(fontSize: 22,), // Desktop
  ];

  static final bodyMedium = [
    _bodyMediumTextStyle.copyWith(fontSize: 14,), // Mobile
    _bodyMediumTextStyle.copyWith(fontSize: 18,), // Tablet
    _bodyMediumTextStyle.copyWith(fontSize: 20,), // Desktop
  ];

  static final bodySmall = [
    _bodySmallTextStyle.copyWith(fontSize: 12,), // Mobile
    _bodySmallTextStyle.copyWith(fontSize: 16,), // Tablet
    _bodySmallTextStyle.copyWith(fontSize: 18,), // Desktop
  ];


  static const _headline1TextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
  );
  static const _headline2TextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
  );
  static const _headline3TextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
  );
  static const _headline4TextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );
  static const _bodyMediumTextStyle = TextStyle(
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
  );
  static const _bodySmallTextStyle = TextStyle(
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
  );
  static const _bodyLargeTextStyle = TextStyle(
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
  );

  // Mobile text theme
  static final mobileTextTheme = TextTheme(
    headlineLarge: headline1[0],
    headlineMedium: headline2[0],
    headlineSmall: headline3[0],
    displaySmall: headline4[0],
    bodyLarge: bodyLarge[0],
    bodyMedium: bodyLarge[0],
    bodySmall: bodySmall[0],
  );

  // Tablet text theme
  static final tabletTextTheme = TextTheme(
    headlineLarge: headline1[1],
    headlineMedium: headline2[1],
    headlineSmall: headline3[1],
    displaySmall: headline4[1],
    bodyLarge: bodyLarge[1],
    bodyMedium: bodyLarge[1],
    bodySmall: bodySmall[1],
  );

  // Desktop text theme
  static final desktopTextTheme = TextTheme(
    headlineLarge: headline1[2],
    headlineMedium: headline2[2],
    headlineSmall: headline3[2],
    displaySmall: headline4[2],
    bodyLarge: bodyLarge[2],
    bodyMedium: bodyLarge[2],
    bodySmall: bodySmall[2],
  );
}


