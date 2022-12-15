import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../colors/palette.dart';
import '../../controller/signin_controller.dart';

class TextFieldPassword extends StatelessWidget {
  const TextFieldPassword({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    required this.signinController,
    required this.isPasswordOrConfirmPassword,
  }) : super(key: key);

  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final SigninController signinController;
  final bool isPasswordOrConfirmPassword;

  ValueListenable<bool> typeListenableController() {
    if (isPasswordOrConfirmPassword) {
      return signinController.isVisiblePassword;
    } else {
      return signinController.isVisibleConfirmPassword;
    }
  }

  @override
  Widget build(BuildContext context) {
    double iconSize = 25;

    return ValueListenableBuilder(
        valueListenable: typeListenableController(),
        builder: (context, value, child) {
          return TextFormField(
            obscureText: value,
            controller: controller,
            decoration: InputDecoration(
              labelText: labelText,
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              hintText: hintText,
              hintStyle: TextStyle(
                color: Palette.materialPurple.shade900,
                fontSize: 15,
              ),
              suffixIcon: InkWell(
                onTap: !isPasswordOrConfirmPassword
                    ? signinController.setVisibleConfirmPassword
                    : signinController.setVisiblePassword,
                child: SizedBox(
                  height: 10,
                  width: 10,
                  child: Center(
                    child: AnimatedCrossFade(
                        firstChild: Icon(
                          Icons.visibility,
                          color: Palette.materialPurple.shade800,
                          size: iconSize,
                        ),
                        secondChild: Icon(
                          Icons.visibility_off,
                          color: Palette.materialPurple.shade800,
                          size: iconSize,
                        ),
                        crossFadeState: !value
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                        duration: const Duration(milliseconds: 250)),
                  ),
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 15),
            ),
          );
        });
  }
}
