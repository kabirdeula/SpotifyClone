import 'package:flutter/material.dart';

import 'package:spotify_clone/core/dependency_injection/dependency_injection.dart';
import 'package:spotify_clone/core/widgets/widgets.dart';
import 'package:spotify_clone/features/authentication/authentication.dart';
import 'package:spotify_clone/routes/routes.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthScreen(
      title: 'Sign In',
      button: 'Sign In',
      fields: [
        CustomTextFormField(
            controller: email, hintText: 'Enter Username or Email'),
        CustomTextFormField(
          controller: password,
          hintText: 'Password',
          isObscureText: true,
        ),
      ],
      onSubmit: () async {
        final user = UserModel(email: email.text, password: password.text);

        var result = await sl<LoginUsecase>().call(user: user);

        if (result.success != null) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(result.success!)));
        } else {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(result.error!)));
        }
      },
      footerText: 'Not A Member? ',
      footerActionText: 'Register Now',
      onFooterAction: () => context.go(AppRoutes.register.path),
    );
  }
}
