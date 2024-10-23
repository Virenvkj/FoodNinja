import '../../core/constant/strings.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String description;

  OnboardingModel(
      {required this.image, required this.title, required this.description});
}

List<OnboardingModel> onboardingDetailsList=[
  OnboardingModel(
    image: 'assets/OnboardingImage/onboardingImage1.png',
    title: IntroScreenString.title1,
    description:
    'All the best restaurants with their top menu waiting for you, they cant’t wait for your order!!',

  ),
  OnboardingModel(
    image: 'assets/OnboardingImage/onboardingImage2.png',
    title:IntroScreenString.title2,
    description:
    'All the best restaurants with their top menu waiting for you, they cant’t wait for your order!!',

  ),
  OnboardingModel(
    image: 'assets/OnboardingImage/onboardingImage3.png',
    title: IntroScreenString.title3,
    description:
    'All the best restaurants with their top menu waiting for you, they cant’t wait for your order!!',
  ),
];