import 'package:flutter/material.dart';
import 'package:foodninja/Presentation/Onboarding_Screen/onboarding_screen.dart';

import 'Presentation/tabs_screens/tabs.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Ninja',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const OnboardingScreen(),
      home: const Tabs(),

    );
  }
}

