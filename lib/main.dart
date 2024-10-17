import 'package:flutter/material.dart';
import 'package:foodninja/Presentation/Onboarding_Screen/onboarding_screen.dart';
import 'package:foodninja/core/Theme_data/breakpoint_enum.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.builder(
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: 'Food Ninja',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const OnboardingScreen(),
          );
        }
      ), breakpoints: [
        BreakpointEnum.mobile.point,
        BreakpointEnum.tablet.point,
        BreakpointEnum.desktop.point,

    ],
    );
  }
}

