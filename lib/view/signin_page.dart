import 'package:flutter/material.dart';
import 'package:sunshine_app/controller/signin_controller.dart';
import '../colors/palette.dart';
import '../widgets/logo_sized_box.dart';
import '../widgets/princiapal_button.dart';
import '../widgets/text_field_signin.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key, required this.title});

  final String title;

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  SigninController signinController = SigninController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/backgroundSignin.png"),
          fit: BoxFit.cover,
        )),
        child: Container(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              children: [
                const SizedBox(height: 50),
                const LogoSizedBox(),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Cadastro",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontFamily: "Schyler"),
                  ),
                ),
                const SizedBox(height: 30),
                TextFieldSignin(
                  hintText: "Digite o seu nome: ",
                  labelText: "Nome",
                  isDdd: false,
                  isPhone: false,
                  controller: signinController.nomeController,
                  sufixIcon: Icon(
                    Icons.keyboard,
                    size: 23,
                    color: Palette.materialPurple.shade900,
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(
                      width: 110,
                      child: Flexible(
                        child: TextFieldSignin(
                          hintText: "Digite o seu ddd",
                          labelText: "DDD",
                          isDdd: true,
                          isPhone: false,
                          controller: signinController.dddController,
                          sufixIcon: Icon(
                            Icons.call,
                            size: 23,
                            color: Palette.materialPurple.shade900,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Flexible(
                      child: TextFieldSignin(
                        hintText: "Digite o seu número de telefone: ",
                        labelText: "Telefone",
                        isDdd: false,
                        isPhone: true,
                        controller: signinController.telefoneController,
                        sufixIcon: Icon(
                          Icons.phone_android,
                          size: 23,
                          color: Palette.materialPurple.shade900,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 40),
                TextFieldSignin(
                  hintText: "Digite o seu e-mail",
                  labelText: "E-mail",
                  isDdd: false,
                  isPhone: false,
                  controller: signinController.emailController,
                  sufixIcon: Icon(
                    Icons.mail,
                    size: 23,
                    color: Palette.materialPurple.shade900,
                  ),
                ),
                const SizedBox(height: 40),
                TextFieldSignin(
                  hintText: "Digite uma senha",
                  labelText: "Senha",
                  isDdd: false,
                  isPhone: false,
                  controller: signinController.senhaController,
                  sufixIcon: Icon(
                    Icons.password,
                    size: 23,
                    color: Palette.materialPurple.shade900,
                  ),
                ),
                const SizedBox(height: 40),
                TextFieldSignin(
                  hintText: "Confirme a sua senha",
                  labelText: "Confirmação de senha",
                  isDdd: false,
                  isPhone: false,
                  controller: signinController.confirmacaoController,
                  sufixIcon: Icon(
                    Icons.check,
                    size: 23,
                    color: Palette.materialPurple.shade900,
                  ),
                ),
                const SizedBox(height: 40),
                const SizedBox(
                  width: 150,
                  height: 40,
                  child: PrincipalButton(textValue: "Salvar"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
