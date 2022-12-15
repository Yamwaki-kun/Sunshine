import 'package:flutter/material.dart';
import 'package:sunshine_app/colors/palette.dart';
import 'package:sunshine_app/widgets/textfields/text_field_signin.dart';

class EsqueceuASenha extends StatefulWidget {
  const EsqueceuASenha({super.key});

  @override
  State<EsqueceuASenha> createState() => _EsqueceuASenhaState();
}

class _EsqueceuASenhaState extends State<EsqueceuASenha> {
  TextEditingController controlador = TextEditingController();
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
        padding: const EdgeInsets.only(left: 30, right: 30),
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
            ),
            TextFieldSignin(
                labelText: "E-mail",
                hintText: "Digite o seu E-mail",
                sufixIcon: const Icon(Icons.mail),
                controller: controlador,
                typeInput: TextInputType.emailAddress)
          ],
        ),
      ),
    );
  }
}
