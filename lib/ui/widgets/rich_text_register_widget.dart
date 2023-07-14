import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../gen/colors.gen.dart';

class RichTextRegisterWidget extends StatelessWidget {
  const RichTextRegisterWidget({super.key});

  String get _byTappingOnRegister =>
      'Нажимая «Зарегистрироваться», вы соглашаетесь с нашими ';

  String get _termsOfUse => 'Условиями использования';

  String get _privacyPolicy => 'Политикой конфиденциальности';

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: _byTappingOnRegister,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: ColorName.neutral500,
                ),
          ),
          TextSpan(
            text: _termsOfUse,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: ColorName.blueAccent800,
                ),
            // TODO(Anton): Add logic on tap
            recognizer: TapGestureRecognizer()
              ..onTap = () => debugPrint('Terms'),
          ),
          TextSpan(
            text: ' и ',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: ColorName.neutral500,
                ),
          ),
          // TODO(Anton): Add logic on tap
          TextSpan(
            text: _privacyPolicy,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: ColorName.blueAccent800,
                ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => debugPrint('Policy'),
          ),
          TextSpan(
            text: '.',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: ColorName.neutral500,
                ),
          ),
        ],
      ),
    );
  }
}
