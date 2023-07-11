import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../gen/colors.gen.dart';
import '../../../res/app_typography.dart';

class OnboardingPageWidget extends StatelessWidget {
  const OnboardingPageWidget({
    super.key,
    required this.assetName,
    required this.title,
    required this.subtitle,
  });

  final String assetName;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 70),
        Center(
          child: SvgPicture.asset(
            assetName,
            height: 250,
            width: 250,
          ),
        ),
        const SizedBox(height: 48),
        Text(
          title,
          textAlign: TextAlign.start,
          style: AppTypography.headlineSmall.copyWith(
            fontWeight: FontWeight.w700,
            color: ColorName.heading,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          subtitle,
          textAlign: TextAlign.start,
          style: AppTypography.titleMedium.copyWith(
            fontWeight: FontWeight.w500,
            color: ColorName.text,
          ),
        ),
      ],
    );
  }
}
