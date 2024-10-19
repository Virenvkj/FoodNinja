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
    title: '   We server \nincomparable \n   delicacies',
    description:
    'All the best restaurants with their top menu waiting for you, they cant’t wait for your order!!',

  ),
  OnboardingModel(
    image: 'assets/OnboardingImage/onboardingImage2.png',
    title: '   Find the \n     Best \nRestaurants',
    description:
    'All the best restaurants with their top menu waiting for you, they cant’t wait for your order!!',

  ),
  OnboardingModel(
    image: 'assets/OnboardingImage/onboardingImage3.png',
    title: ' They can\'t \n   wait for \nyour order!!',
    description:
    'All the best restaurants with their top menu waiting for you, they cant’t wait for your order!!',
  ),
];