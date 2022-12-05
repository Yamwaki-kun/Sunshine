import 'package:flutter/material.dart';
import 'package:sunshine_app/controller/signin_controller.dart';
import '../colors/palette.dart';
import '../widgets/logo_sized_box.dart';
import '../widgets/text_field_password.dart';
import '../widgets/text_field_signin.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  SigninController signinController = SigninController();

  @override
  void dispose() {
    signinController.confirmacaoController.dispose();
    signinController.dddController.dispose();
    signinController.emailController.dispose();
    signinController.isVisiblePassword.dispose();
    signinController.nomeController.dispose();
    signinController.senhaController.dispose();
    signinController.telefoneController.dispose();
    super.dispose();
  }

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
                const Hero(tag: 'logoHero', child: LogoSizedBox()),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Hero(
                    tag: "txtLoginToSigin",
                    child: Text(
                      "Cadastro",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Schyler"),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                TextFieldSignin(
                  hintText: "Digite o seu nome: ",
                  labelText: "Nome",
                  typeInput: TextInputType.text,
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
                      child: TextFieldSignin(
                        hintText: "Digite o seu ddd",
                        labelText: "DDD",
                        formatter: "##",
                        typeInput: TextInputType.number,
                        controller: signinController.dddController,
                        sufixIcon: Icon(
                          Icons.call,
                          size: 23,
                          color: Palette.materialPurple.shade900,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Flexible(
                      child: TextFieldSignin(
                        hintText: "Digite o seu número de telefone: ",
                        labelText: "Telefone",
                        formatter: "#####-####",
                        typeInput: const TextInputType.numberWithOptions(),
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
                  typeInput: TextInputType.emailAddress,
                  controller: signinController.emailController,
                  sufixIcon: Icon(
                    Icons.mail,
                    size: 23,
                    color: Palette.materialPurple.shade900,
                  ),
                ),
                const SizedBox(height: 40),
                TextFieldPassword(
                  hintText: "Digite uma senha",
                  labelText: "Senha",
                  isPasswordOrConfirmPassword: true,
                  controller: signinController.senhaController,
                  signinController: signinController,
                ),
                const SizedBox(height: 40),
                TextFieldPassword(
                  hintText: "Confirme a sua senha",
                  labelText: "Confirmação de senha",
                  isPasswordOrConfirmPassword: false,
                  controller: signinController.confirmacaoController,
                  signinController: signinController,
                ),
                const SizedBox(height: 40),
                SizedBox(
                    width: 150,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          print("salvar");
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            )),
                            backgroundColor: MaterialStateProperty.all(
                                Palette.materialPurple.shade700)),
                        child: const Text("Salvar",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ))))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
