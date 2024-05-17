import 'package:flutter/material.dart';
import 'package:aplikasi_sidang/widget/custom_textfield.dart';
import 'package:flutter/widgets.dart';



class LoginForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final bool isObscure;

  const LoginForm({
    required this.emailController,
    required this.passwordController,
    required this.isObscure,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 5.0),
        Text(
          'Loggin',
          style: TextStyle(fontSize: 20.0),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24.0),
        CustomTextfield(
          controller: emailController,
          textInputType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          hint: 'Username',
        ),
        const SizedBox(height: 16.0),
        CustomTextfield(
          controller: passwordController,
          textInputType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.done,
          hint: 'Password',
          isObscure: isObscure,
          hasSuffix: true,
          onPressed: () {
            // Add logic here if needed
          },
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }
}
