import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../../res/app_strings.dart';
import 'onboarding_struct.dart';

class OnboardingProvider extends ChangeNotifier {
  final PageController pageController = PageController();

  String buttonText = AppStrings.next;

  void onPageChange(int index) {
    buttonText = index != pages.length - 1 ? AppStrings.next : AppStrings.enter;
    notifyListeners();
  }

  bool onNextPage() {
    if (buttonText == AppStrings.enter) {
      return true;
    }
    pageController.nextPage(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    );
    buttonText = pageController.page?.round() != pages.length - 1
        ? AppStrings.next
        : AppStrings.enter;
    notifyListeners();
    return false;
  }

  final List<OnboardingStruct> pages = <OnboardingStruct>[
    OnboardingStruct(
      image: Assets.images.onboarding.onboardingFirst.path,
      title: AppStrings.firstOnboardingTitle,
      subtitle: AppStrings.firstOnboardingSubtitle,
    ),
    OnboardingStruct(
      image: Assets.images.onboarding.onboardingSecond.path,
      title: AppStrings.secondOnboardingTitle,
      subtitle: AppStrings.secondOnboardingSubtitle,
    ),
    OnboardingStruct(
      image: Assets.images.onboarding.onboardingThird.path,
      title: AppStrings.thirdOnboardingTitle,
      subtitle: AppStrings.thirdOnboardingSubtitle,
    ),
  ];
}
