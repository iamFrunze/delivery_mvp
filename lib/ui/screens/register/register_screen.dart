import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../res/app_strings.dart';
import '../../widgets/buttons/enum_size_button.dart';
import '../../widgets/buttons/primary_btn_widget.dart';
import '../../widgets/rich_text_register_widget.dart';
import '../../widgets/text_field_widget.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Assets.images.mainIcon.svg(height: 128),
              const SizedBox(height: 32),
              TextFieldWidget(
                labelText: AppStrings.name,
                hintText: AppStrings.nameHint,
                controller: TextEditingController(),
              ),
              const SizedBox(height: 24),
              TextFieldWidget(
                labelText: AppStrings.numberPhone,
                hintText: AppStrings.numberPhoneHint,
                controller: TextEditingController(),
              ),
              const SizedBox(height: 16),
              const RichTextRegisterWidget(),
              const SizedBox(height: 28),
              PrimaryBtnWidget(
                AppStrings.registration,
                onPressed: () {},
                sizeButton: SizeButton.infinity,
                icon: null,
              ),
              const SizedBox(height: 54),
              GestureDetector(
                onTap: () => debugPrint('Terms'),
                child: RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyMedium,
                    text: AppStrings.haveAccount,
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ${AppStrings.logIn}',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: ColorName.primary,
                              fontWeight: FontWeight.w500,
                            ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
