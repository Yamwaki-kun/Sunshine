import 'package:flutter/material.dart';
import '../colors/palette.dart';
import '../controller/signin_controller.dart';

class TextFieldPassword extends StatelessWidget {
  const TextFieldPassword({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    required this.signinController,
    required this.isPasswordOrConfirm,
  }) : super(key: key);

  final String labelText;
  final String hintText;
  //true = password false confirm password
  final bool isPasswordOrConfirm;

  final TextEditingController controller;
  final SigninController signinController;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: signinController.isVisiblePassword,
        builder: (context, value, child) {
          return TextField(
            obscureText: value,
            controller: controller,
            decoration: InputDecoration(
              labelText: labelText,
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              hintText: hintText,
              hintStyle: TextStyle(
                  color: Palette.materialPurple.shade900, fontSize: 15),
              isDense: true,
              suffixIcon: GestureDetector(
                onTap: signinController.setVisiblePassword,
                child: Icon(
                  !value ? Icons.remove_red_eye_outlined : Icons.remove_red_eye,
                  size: 23,
                  color: Palette.materialPurple.shade900,
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
            ),
          );
        });
  }
}
