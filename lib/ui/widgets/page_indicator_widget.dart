import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../gen/colors.gen.dart';

class PageIndicatorWidget extends StatelessWidget {
  const PageIndicatorWidget({
    super.key,
    required this.pageController,
    required this.pageCount,
  });

  final PageController pageController;
  final int pageCount;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: pageCount,
      effect: const ExpandingDotsEffect(
        expansionFactor: 2,
        activeDotColor: ColorName.primary,
        dotColor: ColorName.disabled,
      ),
    );
  }
}
