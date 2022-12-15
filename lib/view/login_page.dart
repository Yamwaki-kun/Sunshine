import 'package:flutter/material.dart';

import '../colors/palette.dart';
import '../controller/signin_controller.dart';
import '../widgets/logo_sized_box.dart';
import '../widgets/textfields/text_field_password.dart';
import '../widgets/textfields/text_field_signin.dart';
import 'package:sign_button/sign_button.dart';

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
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 90),
            reverse: false,
            child: Column(
              children: [
                const SizedBox(height: 100),
                const Hero(tag: 'logoHero', child: LogoSizedBox()),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Hero(
                    tag: "txtLoginToSigin",
                    flightShuttleBuilder: flighShuttleBuilder,
                    child: const Text(
                      "Login",
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
                        onPressed: () =>
                            Navigator.pushNamed(context, '/principal'),
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
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            )))),
                const SizedBox(height: 20),
                SizedBox(
                    width: 150,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/signin'),
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
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            )))),
                const SizedBox(height: 15),
                const Text("Ou"),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignInButton.mini(
                      buttonType: ButtonType.instagram,
                      onPressed: () {},
                    ),
                    SignInButton.mini(
                      buttonType: ButtonType.google,
                      onPressed: () {},
                    ),
                    SignInButton.mini(
                      buttonType: ButtonType.facebook,
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/esqueceuASenha');
                  },
                  child: const Text("Esqueceu a senha ?",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Schyler",
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 98, 81, 248))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget flighShuttleBuilder(flightContext, animation, flightDirection,
      fromHeroContext, toHeroContext) {
    return DefaultTextStyle(
      style: DefaultTextStyle.of(toHeroContext).style,
      child: toHeroContext.widget,
    );
  }
}
