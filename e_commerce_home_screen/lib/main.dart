import 'package:e_commerce_home_screen/core/routes.dart';
import 'package:e_commerce_home_screen/screens/my_home_page.dart';
import 'package:e_commerce_home_screen/screens/my_login_page.dart';
import 'package:e_commerce_home_screen/screens/my_sgin_up_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Hind',
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff154883)),
      ),
      initialRoute: Routes.login,
      routes: {
        Routes.home: (context) => const MyHomePage(),
        Routes.login: (context) => MyLoginPage(),
        Routes.signUp: (context) => MySginupPage(),
      },
    );
  }
}
