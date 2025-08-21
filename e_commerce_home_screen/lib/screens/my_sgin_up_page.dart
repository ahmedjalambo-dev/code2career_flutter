import 'package:e_commerce_home_screen/core/routes.dart';
import 'package:e_commerce_home_screen/screens/my_home_page.dart';
import 'package:e_commerce_home_screen/screens/my_login_page.dart';
import 'package:e_commerce_home_screen/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MySginupPage extends StatelessWidget {
  MySginupPage({super.key});
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confrimPasswordController =
      TextEditingController();

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
                hintText: 'Name',
                textEditingController: _nameController,
                validator: (String? name) {
                  if (name!.isNotEmpty) {
                    return null;
                  }
                  return 'Please enter your name';
                },
              ),
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
              MyTextField(
                hintText: 'Comfirm Password',
                textEditingController: _confrimPasswordController,
                obscureText: true,
                validator: (String? confirmPassword) {
                  if (confirmPassword == _passwordController.text &&
                      confirmPassword!.isNotEmpty) {
                    return null;
                  }
                  return 'Passwords do not match';
                },
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.login);
                  },
                  child: Text('Do you have an account?'),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    double.infinity,
                    50,
                  ), // Set width to infinity for full width and a desired height
                ),
                onPressed: () => _sginup(context),
                child: Text('SGIN UP'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _sginup(BuildContext context) {
    // Implement signup logic here
    if (_formKey.currentState!.validate()) {
      // Handle successful signup logic here
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Signup Successful')));
      Navigator.pushReplacementNamed(context, Routes.home);
    }
  }
}
