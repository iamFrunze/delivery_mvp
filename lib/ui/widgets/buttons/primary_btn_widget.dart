import 'package:flutter/material.dart';

import '../../../res/app_dimensions.dart';
import 'enum_size_button.dart';

class PrimaryBtnWidget extends StatelessWidget {
  const PrimaryBtnWidget(
    this.text, {
    super.key,
    required this.sizeButton,
    this.onPressed,
    required this.icon,
  });

  final String text;
  final void Function()? onPressed;
  final SizeButton sizeButton;
  final Widget? icon;

  Size get buttonSize {
    switch (sizeButton) {
      case SizeButton.normal:
        return const Size(
          AppDimensions.buttonWidth,
          AppDimensions.buttonNormalHeight,
        );
      case SizeButton.small:
        return const Size(
          AppDimensions.buttonWidth,
          AppDimensions.buttonSmallHeight,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonSize.width,
      height: buttonSize.height,
      child: icon != null
          ? FilledButton.icon(
              onPressed: onPressed,
              label: icon!,
              icon: Text(text),
            )
          : FilledButton(
              onPressed: onPressed,
              child: Text(text),
            ),
    );
  }
}
