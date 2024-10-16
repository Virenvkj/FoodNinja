import 'package:flutter/material.dart';

import '../../Domain/OnboardingModel/onboarding_model.dart';
import 'onboarding_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controller,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
          children: List.generate(
              onboardingDetailsList.length,
              (index) => OnboardingPage(
                    index: index,
                    controller: _controller,
                    currentPage: _currentPage,
                  )),
        ),
      ]),
    );
  }
}
