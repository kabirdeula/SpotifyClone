import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/constants.dart';
import 'package:spotify_clone/core/widgets/widgets.dart';

class AuthScreen extends StatelessWidget {
  final String title;
  final String button;
  final List<CustomTextFormField> fields;
  final VoidCallback onSubmit;
  final String footerText;
  final String footerActionText;
  final VoidCallback onFooterAction;

  const AuthScreen({
    super.key,
    required this.title,
    required this.button,
    required this.fields,
    required this.onSubmit,
    required this.footerText,
    required this.footerActionText,
    required this.onFooterAction,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: AutofillGroup(
          child: Column(
            spacing: 16,
            children: [
              brandingImage(scale: 2.6),
              AppText(text: title, appTextStyle: AppTextStyle.subtitle),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(text: 'If You Need Any Support '),
                  AppText(text: 'Click Here', color: AppColors.primary),
                ],
              ),
              ...fields,
              SizedBox(
                width: double.infinity,
                child: CustomElevatedButton(
                  onPressed: onSubmit,
                  label: button,
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [SocialButton.google(), SocialButton.apple()],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(text: footerText),
                  TextButton(
                    onPressed: onFooterAction,
                    child: AppText(
                      text: footerActionText,
                      color: AppColors.primary,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
