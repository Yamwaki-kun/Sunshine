import 'package:flutter/material.dart';
import 'package:sunshine_app/widgets/cards/card_sacola.dart';

class SacolaPage extends StatefulWidget {
  const SacolaPage({super.key});

  @override
  State<SacolaPage> createState() => _SacolaPageState();
}

class _SacolaPageState extends State<SacolaPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/backgroundSignin.png"),
          fit: BoxFit.cover,
        )),
        child: CardSacola(shadow: false));
  }
}
