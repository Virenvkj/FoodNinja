// import 'package:flutter/material.dart';
//
// class AppTextTheme {
//   // Base text style
//   static const baseTextStyle = TextStyle(
//     // fontFamily: 'SignifyRelative',
//     fontWeight: FontWeight.normal,
//     letterSpacing: 0,
//   );
//
//   static final headline1 = [
//     _headlineTextStyle.copyWith(fontSize: 24, height: 32 / 24),
//     _headlineTextStyle.copyWith(fontSize: 36, height: 44 / 36),
//     _headlineTextStyle.copyWith(fontSize: 44, height: 64 / 44),
//   ];
//   static const _headlineTextStyle = TextStyle(
//     // fontFamily: 'SignifyRelative',
//     fontWeight: FontWeight.normal,
//     letterSpacing: 0,
//   );
//
//
//   static final headlineLarge = TextTheme(
//     headlineLarge: headline1[0],
//   );
//
// }
//
// // import 'package:flutter/material.dart';
// //
// // class AppTextTheme {
// //   static const mobileTextTheme = TextTheme(
// //     headlineMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.normal,),
// //     displayLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.bold,),
// //     displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,),
// //     displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.normal,),
// //     bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.normal,),
// //     bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,),
// //     bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.normal,)
// //   );
// //
// //   static const tabletTextTheme = TextTheme(
// //       headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.normal,),
// //     displayLarge: TextStyle(fontSize: 38, fontWeight: FontWeight.bold,),
// //     displayMedium: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),
// //     displaySmall: TextStyle(fontSize: 26, fontWeight: FontWeight.normal,),
// //     bodyLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.normal,),
// //     bodyMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.normal,),
// //       bodySmall: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,)
// //   );
// //
// //   static const desktopTextTheme = TextTheme(
// //     headlineMedium: TextStyle(fontSize: 28.0,fontWeight: FontWeight.normal,),
// //     displayLarge: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,),
// //     displayMedium: TextStyle(fontSize: 32.0,fontWeight: FontWeight.bold,),
// //     displaySmall: TextStyle(fontSize: 28.0,fontWeight: FontWeight.normal,),
// //     bodyLarge: TextStyle(fontSize: 22.0,fontWeight: FontWeight.normal,),
// //     bodyMedium: TextStyle(fontSize: 18.0,fontWeight: FontWeight.normal,),
// //   );
// // }
//
// import 'package:flutter/material.dart';
//
// import 'package:flutter/material.dart';
//
// class AppTextTheme {
//   // Base text style
//   // static final baseTextStyle = TextStyle(
//   //   fontFamily: FontFamily.signifyRelative,
//   //   fontWeight: AppFontWeight.book,
//   //   color: _defaultTextColor,
//   //   letterSpacing: 0,
//   // );
//   static const baseTextStyle = TextStyle(
//     fontWeight: FontWeight.normal,
//     letterSpacing: 0,
//   );
//
//   // Define a headline1 list to store text styles for three different screen sizes (mobile, tablet, desktop)
//   static final headline1 = [
//     _headline1TextStyle.copyWith(fontSize: 40, ), // Mobile
//     _headline1TextStyle.copyWith(fontSize: 42, height: 44 / 36), // Tablet
//     _headline1TextStyle.copyWith(fontSize: 44, height: 64 / 44), // Desktop
//   ];
//
//   static final headline2 = [
//     _displayLargeTextStyle.copyWith(fontSize: 32, ), // Mobile
//     _displayLargeTextStyle.copyWith(fontSize: 34, ), // Tablet
//     _displayLargeTextStyle.copyWith(fontSize: 36, ), // Desktop
//   ];
//
//   static final headline3 = [
//     _displayLargeTextStyle.copyWith(fontSize: 24, ), // Mobile
//     _displayLargeTextStyle.copyWith(fontSize: 26, ), // Tablet
//     _displayLargeTextStyle.copyWith(fontSize: 28, ), // Desktop
//   ];
//
//   static final headline4= [
//     _displayLargeTextStyle.copyWith(fontSize: 18, ), // Mobile
//     _displayLargeTextStyle.copyWith(fontSize: 20, ), // Tablet
//     _displayLargeTextStyle.copyWith(fontSize: 22, ), // Desktop
//   ];
//
//   static final bodyLarge = [
//     _displayLargeTextStyle.copyWith(fontSize: 16, ), // Mobile
//     _displayLargeTextStyle.copyWith(fontSize: 20, ), // Tablet
//     _displayLargeTextStyle.copyWith(fontSize: 22, ), // Desktop
//   ];
//
//   static final bodyMedium = [
//     _displayLargeTextStyle.copyWith(fontSize: 14, ), // Mobile
//     _displayLargeTextStyle.copyWith(fontSize: 18, ), // Tablet
//     _displayLargeTextStyle.copyWith(fontSize: 20, ), // Desktop
//   ];
//
//   static final bodySmall = [
//     _displayLargeTextStyle.copyWith(fontSize: 12, ), // Mobile
//     _displayLargeTextStyle.copyWith(fontSize: 16, ), // Tablet
//     _displayLargeTextStyle.copyWith(fontSize: 18, ), // Desktop
//   ];
//
//
//   static const _headline1TextStyle = TextStyle(
//     fontWeight: FontWeight.w500,
//     letterSpacing: 0,
//   );
//   static const _displayLargeTextStyle = TextStyle(
//     fontWeight: FontWeight.bold,
//     letterSpacing: 0,
//   );
//   static const _displayMediumTextStyle = TextStyle(
//     fontWeight: FontWeight.bold,
//     letterSpacing: 0,
//   );
//   static const _displaySmallTextStyle = TextStyle(
//     fontWeight: FontWeight.w400,
//     letterSpacing: 0,
//   );
//   static const _bodyMediumTextStyle = TextStyle(
//     fontWeight: FontWeight.normal,
//     letterSpacing: 0,
//   );
//   static const _bodySmallTextStyle = TextStyle(
//     fontWeight: FontWeight.w400,
//     letterSpacing: 0,
//   );
//   static const _bodyLargeTextStyle = TextStyle(
//     fontWeight: FontWeight.normal,
//     letterSpacing: 0,
//   );
//
//   // Mobile text theme
//   static final mobileTextTheme = TextTheme(
//     headlineLarge: headline1[0], // Using the first style for mobile (index 0)
//     displayLarge: baseTextStyle.copyWith(fontSize: 36, fontWeight: FontWeight.bold),
//     displayMedium: baseTextStyle.copyWith(fontSize: 28, fontWeight: FontWeight.bold),
//     displaySmall: baseTextStyle.copyWith(fontSize: 24),
//     bodyLarge: baseTextStyle.copyWith(fontSize: 18),
//     bodyMedium: baseTextStyle.copyWith(fontSize: 16),
//     bodySmall: baseTextStyle.copyWith(fontSize: 14),
//   );
//
//   // Tablet text theme
//   static final tabletTextTheme = TextTheme(
//     headlineLarge: headline1[1], // Using the second style for tablet (index 1)
//     displayLarge:
//     baseTextStyle.copyWith(fontSize: 38, fontWeight: FontWeight.bold),
//     displayMedium:
//     baseTextStyle.copyWith(fontSize: 30, fontWeight: FontWeight.bold),
//     displaySmall: baseTextStyle.copyWith(fontSize: 26),
//     bodyLarge: baseTextStyle.copyWith(fontSize: 20),
//     bodyMedium: baseTextStyle.copyWith(fontSize: 18),
//     bodySmall: baseTextStyle.copyWith(fontSize: 16),
//   );
//
//   // Desktop text theme
//   static final desktopTextTheme = TextTheme(
//     headlineLarge: headline1[2], // Using the third style for desktop (index 2)
//     displayLarge:
//     baseTextStyle.copyWith(fontSize: 40, fontWeight: FontWeight.bold),
//     displayMedium:
//     baseTextStyle.copyWith(fontSize: 32, fontWeight: FontWeight.bold),
//     displaySmall: baseTextStyle.copyWith(fontSize: 28),
//     bodyLarge: baseTextStyle.copyWith(fontSize: 22),
//     bodyMedium: baseTextStyle.copyWith(fontSize: 18),
//   );
//
//   // Utility method to get the appropriate text theme based on screen width
//   static TextTheme getTextTheme(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//
//     if (screenWidth >= 1024) {
//       return desktopTextTheme;
//     } else if (screenWidth >= 600) {
//       return tabletTextTheme;
//     } else {
//       return mobileTextTheme;
//     }
//   }
// }
