import 'package:flutter/material.dart';
import 'package:sunshine_app/colors/palette.dart';

class ButtonDetailQuiosque extends StatelessWidget {
  final String text;
  const ButtonDetailQuiosque({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Container(
          height: 30,
          padding: const EdgeInsets.only(left: 15, right: 15, top: 6),
          decoration: BoxDecoration(
              color: Palette.materialBlueApp,
              borderRadius: BorderRadius.circular(50)),
          child: Text(text, style: const TextStyle(color: Colors.white)),
        ));
  }
}
