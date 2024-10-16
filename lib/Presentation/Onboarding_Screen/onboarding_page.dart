import 'package:flutter/material.dart';
import 'package:foodninja/Domain/OnboardingModel/onboarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatelessWidget {
  final int index;
  final PageController controller;
  final int currentPage;

  const OnboardingPage({super.key,
    required this.index,
    required this.controller,
    required this.currentPage});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return Stack(children: [
      SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          onboardingDetailsList[index].image,
          fit: BoxFit.fitHeight,
        ),
      ),
      Positioned(
        bottom: height*0.05,
        left: width * 0.10,
        child: Container(
          height: height * 0.45,
          width: width * 0.80,
          decoration: BoxDecoration(
              color: const Color(0xFFFE8C00),
              borderRadius: BorderRadius.circular(48)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  onboardingDetailsList[index].title,
                  style: const TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  onboardingDetailsList[index].description,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                SmoothPageIndicator(
                    controller: controller, // PageController
                    count: onboardingDetailsList.length,
                    effect: ExpandingDotsEffect(
                      dotHeight: height * 0.010,
                      dotWidth: width * 0.020,
                      activeDotColor: Colors.white,
                      radius: 40,
                      dotColor: Colors.white60,
                    ), // your preferred effect
                    onDotClicked: (index) {}),
                currentPage == 2
                    ? SizedBox(
                  height: height * 0.03,
                )
                    : SizedBox(
                  height: height * 0.06,
                ),
                currentPage == 2
                    ? GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: height * 0.04,
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
    ]);
  }
}
