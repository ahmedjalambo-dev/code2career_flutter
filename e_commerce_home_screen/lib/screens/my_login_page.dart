import 'dart:math';

import 'package:e_commerce_home_screen/core/routes.dart';
import 'package:e_commerce_home_screen/screens/my_home_page.dart';
import 'package:e_commerce_home_screen/screens/my_sgin_up_page.dart';
import 'package:e_commerce_home_screen/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyLoginPage extends StatelessWidget {
  MyLoginPage({super.key});
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 18,
            children: [
              SvgPicture.asset('assets/images/logo.svg', width: 200),
              MyTextField(
                hintText: 'Email Address',
                textEditingController: _emailController,
                validator: (String? email) {
                  if (email!.isNotEmpty &&
                      email.contains('@') &&
                      email.contains('.')) {
                    return null;
                  }
                  return 'Please enter a valid email address';
                },
              ),
              MyTextField(
                hintText: 'Password',
                textEditingController: _passwordController,
                obscureText: true,
                validator: (String? password) {
                  if (password!.length >= 6) {
                    return null;
                  }
                  return 'Password must be at least 6 characters';
                },
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.signUp);
                  },
                  child: Text('Create New Account'),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    double.infinity,
                    50,
                  ), // Set width to infinity for full width and a desired height
                ),
                onPressed: () => _login(context),
                child: Text('LOGIN'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _login(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      // Handle successful login logic here
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Login Successful')));
      Navigator.pushReplacementNamed(context, Routes.home);
    }
  }
}
