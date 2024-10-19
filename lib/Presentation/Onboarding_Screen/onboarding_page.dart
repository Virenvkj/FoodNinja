import 'package:flutter/material.dart';
import 'package:foodninja/Domain/OnboardingModel/onboarding_model.dart';
import 'package:foodninja/core/constant/extension.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatelessWidget {
  final int index;
  final PageController controller;
  final int currentPage;

  const OnboardingPage({
    super.key,
    required this.index,
    required this.controller,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          onboardingDetailsList[index].image,
          fit: BoxFit.fitHeight,
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFE8C00),
              borderRadius: BorderRadius.circular(48),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    onboardingDetailsList[index].title,
                    style:Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(
                    height: context.height(context) * 0.01,
                  ),
                  Text(
                    onboardingDetailsList[index].description,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(
                    height: context.height(context) * 0.03,
                  ),
                  SmoothPageIndicator(
                    controller: controller,
                    count: onboardingDetailsList.length,
                    effect: ExpandingDotsEffect(
                      dotHeight: context.height(context) * 0.010,
                      dotWidth: context.width(context) * 0.020,
                      activeDotColor: Colors.white,
                      radius: 40,
                      dotColor: Colors.white60,
                    ),
                    onDotClicked: (index) {},
                  ),
                  currentPage == 2
                      ? GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: context.height(context) * 0.04,
                            backgroundColor: Colors.white,
                            child: const Icon(Icons.arrow_forward_rounded),
                          ))
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Skip',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                            TextButton(
                              onPressed: () {
                                controller.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeIn);
                              },
                              child: const Text(
                                'Next',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
