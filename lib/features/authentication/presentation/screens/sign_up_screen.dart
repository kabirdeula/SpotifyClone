import 'package:flutter/material.dart';
import 'package:spotify_clone/core/dependency_injection/dependency_injection.dart';
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
      onSubmit: () async{
        final user = UserModel(
          email: email.text,
          password: password.text,
          name: name.text,
        );

        var result = await sl<RegisterUsecase>().call(user: user);

        if(result.success != null) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result.success!)));
        }else{
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result.error!)));
        }

        
      },
      footerText: 'Do You Have An Account? ',
      footerActionText: 'Sign In',
      onFooterAction: () => context.go(AppRoutes.login.path),
    );
  }
}
