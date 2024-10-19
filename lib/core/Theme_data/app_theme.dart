import 'package:flutter/material.dart';
import 'package:foodninja/Presentation/common_widgets/custom_back_button.dart';
import 'package:foodninja/core/Theme_data/app_text_theme.dart';
import 'package:foodninja/core/constant/theme_color.dart';

// TODO : TBD by Harshyam - FN-17

class AppTheme {
  static ThemeData mobileThemeData = ThemeData(
    textTheme: AppTextTheme.mobileTextTheme,
    colorScheme: ColorScheme.fromSeed(seedColor: ThemeColor.mainColor),
    scaffoldBackgroundColor: ThemeColor.white,
    actionIconTheme: ActionIconThemeData(
      backButtonIconBuilder: (context) => const CustomBackButton(),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(),
    appBarTheme: AppBarTheme(
      backgroundColor: ThemeColor.white,
      centerTitle: true,
      titleTextStyle: AppTextTheme.mobileTextTheme.titleLarge,
      toolbarHeight: kToolbarHeight,
    ),
    useMaterial3: true,
  );

  static ThemeData tabletThemeData = ThemeData(
    textTheme: AppTextTheme.tabletTextTheme,
    colorScheme: ColorScheme.fromSeed(seedColor: ThemeColor.mainColor),
    scaffoldBackgroundColor: ThemeColor.white,
    useMaterial3: true,
    actionIconTheme: ActionIconThemeData(
      backButtonIconBuilder: (context) => const CustomBackButton(),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(),
    appBarTheme: AppBarTheme(
      backgroundColor: ThemeColor.white,
      centerTitle: true,
      titleTextStyle: AppTextTheme.tabletTextTheme.titleLarge,
      toolbarHeight: kToolbarHeight,
    ),
  );

  static ThemeData desktopThemeData = ThemeData(
    textTheme: AppTextTheme.desktopTextTheme,
    colorScheme: ColorScheme.fromSeed(seedColor: ThemeColor.mainColor),
    scaffoldBackgroundColor: ThemeColor.white,
    useMaterial3: true,
    actionIconTheme: ActionIconThemeData(
      backButtonIconBuilder: (context) => const CustomBackButton(),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(),
    appBarTheme: AppBarTheme(
      backgroundColor: ThemeColor.white,
      centerTitle: true,
      titleTextStyle: AppTextTheme.desktopTextTheme.titleLarge,
      toolbarHeight: kToolbarHeight,
    ),
  );
}
