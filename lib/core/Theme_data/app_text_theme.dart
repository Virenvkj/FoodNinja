import 'package:flutter/material.dart';

class AppTextTheme {
  static const mobileTextTheme = TextTheme(
    headlineMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.normal,),
    displayLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.bold,),
    displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,),
    displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.normal,),
    bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.normal,),
    bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,),
    bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.normal,)
  );

  static const tabletTextTheme = TextTheme(
      headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.normal,),
    displayLarge: TextStyle(fontSize: 38, fontWeight: FontWeight.bold,),
    displayMedium: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),
    displaySmall: TextStyle(fontSize: 26, fontWeight: FontWeight.normal,),
    bodyLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.normal,),
    bodyMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.normal,),
      bodySmall: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,)
  );
  
  static const desktopTextTheme = TextTheme(
    headlineMedium: TextStyle(fontSize: 28.0,fontWeight: FontWeight.normal,),
    displayLarge: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,),
    displayMedium: TextStyle(fontSize: 32.0,fontWeight: FontWeight.bold,),
    displaySmall: TextStyle(fontSize: 28.0,fontWeight: FontWeight.normal,),
    bodyLarge: TextStyle(fontSize: 22.0,fontWeight: FontWeight.normal,),
    bodyMedium: TextStyle(fontSize: 18.0,fontWeight: FontWeight.normal,),
  );
}
