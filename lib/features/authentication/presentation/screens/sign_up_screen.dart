import 'package:flutter/material.dart';
import 'package:spotify_clone/core/widgets/widgets.dart';
import 'package:spotify_clone/features/authentication/authentication.dart';
import 'package:spotify_clone/routes/routes.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthScreen(
      title: 'Register',
      button: 'Register',
      fields: [
        CustomTextFormField(controller: name, hintText: 'Full Name'),
        CustomTextFormField(controller: email, hintText: 'Enter Email'),
        CustomTextFormField(
          controller: password,
          hintText: 'Password',
          isObscureText: true,
        ),
      ],
      onSubmit: () {},
      footerText: 'Do You Have An Account? ',
      footerActionText: 'Sign In',
      onFooterAction: () => context.go(AppRoutes.login.path),
    );
  }
}
