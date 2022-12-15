import 'package:flutter/material.dart';
import 'package:sunshine_app/colors/palette.dart';
import 'package:sunshine_app/view/esqueceu_a_senha.dart';
import 'package:sunshine_app/view/login_page.dart';
import 'package:sunshine_app/view/principal_page.dart';
import 'package:sunshine_app/view/rentals_detail_page.dart';
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
        primarySwatch: Palette.materialBlueApp,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/signin': (context) => const SigninPage(),
        '/principal': (context) => const PrincipalPage(),
        '/esqueceuASenha': (context) => const EsqueceuASenha(),
        '/detailQuiosque': (context) => const QuiosqueDetail()
      },
    );
  }
}
