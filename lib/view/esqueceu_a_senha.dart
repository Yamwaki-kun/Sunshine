import 'package:flutter/material.dart';
import 'package:sunshine_app/colors/palette.dart';
import 'package:sunshine_app/controller/signin_controller.dart';
import 'package:sunshine_app/widgets/text_field_signin.dart';

class EsqueceuASenha extends StatefulWidget {
  const EsqueceuASenha({super.key});

  @override
  State<EsqueceuASenha> createState() => _EsqueceuASenhaState();
}

class _EsqueceuASenhaState extends State<EsqueceuASenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        foregroundColor: Palette.materialBlueApp,
        surfaceTintColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        //child: TextFieldSignin(labelText: "labelText", hintText: "hintText", sufixIcon: , controller: controller., typeInput: typeInput),
      ),
    );
  }
}
