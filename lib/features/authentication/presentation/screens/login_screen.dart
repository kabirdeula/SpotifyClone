import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/constants.dart';

import 'package:spotify_clone/core/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          spacing: 16,
          children: [
            brandingImage(scale: 2.6),
            AppText(
              text: 'Sign In',
              appTextStyle: AppTextStyle.subtitle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(text: 'If You Need Any Support '),
                AppText(text: 'Click Here', color: AppColors.primary),
              ],
            ),
            CustomTextFormField(
              controller: email,
              hintText: 'Enter Username or Email',
            ),
            CustomTextFormField(controller: password, hintText: 'Password'),
            Align(
              alignment: Alignment.centerLeft,
              child: AppText(text: 'Recovery Password'),
            ),
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton(onPressed: () {}, label: 'Sign In'),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SocialButton.google(),
                SocialButton.apple(),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(text: 'Not A Member?'),
                AppText(
                  text: 'Register Now',
                  color: AppColors.primary,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
