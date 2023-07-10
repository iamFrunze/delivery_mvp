import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../res/app_strings.dart';
import '../../../res/app_typography.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              Assets.images.mainIcon.path,
              height: 256,
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: AppStrings.appNameZnamensk,
                    style: AppTypography.splashTitle.copyWith(
                      color: ColorName.appNameZnamensk,
                    ),
                  ),
                  TextSpan(
                    text: AppStrings.appNameDelivery,
                    style: AppTypography.splashTitle.copyWith(
                      color: ColorName.appNameDelivery,
                    ),
                  )
                ],
              ),
            ),
            const Text(
              AppStrings.splashSubtitle,
              style: AppTypography.splashSubTitle,
            ),
          ],
        ),
      ),
    );
  }
}
