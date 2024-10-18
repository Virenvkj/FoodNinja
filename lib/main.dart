import 'package:flutter/material.dart';
import 'package:foodninja/Presentation/Authentication/login_screen.dart';
import 'package:foodninja/Presentation/Onboarding_Screen/onboarding_screen.dart';

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
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}

