import 'package:flutter/material.dart';

class SigninController {
  //value notifier
  var isVisiblePassword = ValueNotifier(true);

  //controllers
  final nomeController = TextEditingController();
  final dddController = TextEditingController();
  final telefoneController = TextEditingController();
  final emailController = TextEditingController();
  final senhaController = TextEditingController();
  final confirmacaoController = TextEditingController();

  //methods
  setVisiblePassword() {
    isVisiblePassword.value = !isVisiblePassword.value;
  }
}
