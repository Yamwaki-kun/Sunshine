import 'package:flutter/material.dart';
import 'package:sunshine_app/colors/palette.dart';
import 'package:sunshine_app/view/login_page.dart';
import 'view/signin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Palette.materialPurple,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/signin': (context) => const SigninPage(),
      },
    );
  }
}
