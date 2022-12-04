import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors/palette.dart';
import '../controller/signin_controller.dart';
import '../widgets/logo_sized_box.dart';
import '../widgets/text_field_password.dart';
import '../widgets/text_field_signin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  SigninController signinController = SigninController();

  @override
  void dispose() {
    signinController.emailController.dispose();
    signinController.senhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/backgroundSignin.png"),
          fit: BoxFit.cover,
        )),
        child: Container(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 90),
            reverse: false,
            child: Column(
              children: [
                const SizedBox(height: 50),
                const LogoSizedBox(),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontFamily: "Schyler"),
                  ),
                ),
                const SizedBox(height: 30),
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
                const SizedBox(height: 20),
                TextFieldPassword(
                  hintText: "Digite uma senha",
                  labelText: "Senha",
                  isPasswordOrConfirmPassword: true,
                  controller: signinController.senhaController,
                  signinController: signinController,
                ),
                const SizedBox(height: 20),
                SizedBox(
                    width: 250,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          print("Logar");
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            )),
                            backgroundColor: MaterialStateProperty.all(
                                Palette.materialPurple.shade700)),
                        child: const Text("Logar",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            )))),
                const SizedBox(height: 20),
                SizedBox(
                    width: 150,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          print("Cadastrar");
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                )),
                            backgroundColor: MaterialStateProperty.all(
                                Palette.materialGreen.shade700)),
                        child: const Text("Cadastrar",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            )))),
                const SizedBox(height: 15),
                TextButton(
                  onPressed: () {
                    print("Esqueceu a senha");
                  },
                  child: Text("Esqueceu a senha ?",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Schyler",
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 98, 81, 248))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
