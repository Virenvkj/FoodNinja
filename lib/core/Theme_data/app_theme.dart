import 'package:flutter/material.dart';
import 'package:foodninja/core/Theme_data/app_text_theme.dart';
import 'package:foodninja/core/constant/theme_color.dart';

class AppTheme{
  static ThemeData mobileThemeData = ThemeData(
      textTheme: AppTextTheme.mobileTextTheme,
      colorScheme: ColorScheme.fromSeed(seedColor:ThemeColor.mainColor),
      useMaterial3: true
  );

  static ThemeData tabletThemeData = ThemeData(
      textTheme: AppTextTheme.tabletTextTheme,
      colorScheme: ColorScheme.fromSeed(seedColor:ThemeColor.mainColor),
      useMaterial3: true
  );

  static ThemeData desktopThemeData = ThemeData(
      textTheme: AppTextTheme.desktopTextTheme,
      colorScheme: ColorScheme.fromSeed(seedColor:ThemeColor.mainColor),
      useMaterial3: true
  );
}