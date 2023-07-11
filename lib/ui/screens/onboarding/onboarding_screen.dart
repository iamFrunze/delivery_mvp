import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../res/app_strings.dart';
import '../../widgets/buttons/enum_size_button.dart';
import '../../widgets/buttons/primary_btn_widget.dart';
import '../../widgets/page_indicator_widget.dart';
import 'onboarding_page_widget.dart';
import 'onboarding_provider.dart';
import 'onboarding_struct.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<OnboardingProvider>(
      create: (_) => OnboardingProvider(),
      child: const OnboardingConsumer(),
    );
  }
}

class OnboardingConsumer extends StatelessWidget {
  const OnboardingConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingProvider provider = context.read<OnboardingProvider>();
    final OnboardingProvider watcher = context.watch<OnboardingProvider>();

    final List<OnboardingPageWidget> pages = provider.pages
        .map(
          (OnboardingStruct page) => OnboardingPageWidget(
            assetName: page.image,
            title: page.title,
            subtitle: page.subtitle,
          ),
        )
        .toList();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          right: 20,
          left: 20,
          top: 50,
          bottom: 60,
        ),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  // TODO(Anton): navigation on next page
                },
                child: const Text(
                  AppStrings.skip,
                  style: TextStyle(
                    color: ColorName.primary,
                  ),
                ),
              ),
            ),
            PageView(
              controller: provider.pageController,
              onPageChanged: provider.onPageChange,
              children: pages,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  PageIndicatorWidget(
                    pageController: provider.pageController,
                    pageCount: pages.length,
                  ),
                  PrimaryBtnWidget(
                    watcher.buttonText,
                    icon: Assets.images.icons.arrowRight.svg(),
                    onPressed: () {
                      final bool isRoute = provider.onNextPage();
                      if (isRoute) {
                        // TODO(Anton): Add routing on next screen
                      }
                    },
                    sizeButton: SizeButton.normal,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
