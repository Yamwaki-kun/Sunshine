import 'package:flutter/material.dart';
import '../colors/palette.dart';

class PrincipalButton extends StatelessWidget {
  const PrincipalButton({
    Key? key,
    required this.textValue,
  }) : super(key: key);

  final String textValue;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            )),
            backgroundColor:
                MaterialStateProperty.all(Palette.materialPurple.shade700)),
        child: Text(textValue,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
            )));
  }
}
