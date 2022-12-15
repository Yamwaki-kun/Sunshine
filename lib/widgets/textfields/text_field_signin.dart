import 'package:flutter/material.dart';
import '../../colors/palette.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TextFieldSignin extends StatelessWidget {
  const TextFieldSignin({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.sufixIcon,
    required this.controller,
    this.formatter,
    required this.typeInput,
  }) : super(key: key);

  final String labelText;
  final String hintText;
  final Icon sufixIcon;
  final TextEditingController controller;
  final String? formatter;
  final TextInputType typeInput;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      inputFormatters: [addFormatter(formatter)],
      keyboardType: typeInput,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        hintText: hintText,
        hintStyle:
            TextStyle(color: Palette.materialPurple.shade900, fontSize: 15),
        isDense: true,
        suffixIcon: sufixIcon,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      ),
    );
  }

  //formatação - https://pub.dev/packages/mask_text_input_formatter
  addFormatter(String? form) {
    MaskTextInputFormatter format;
    if (form != null) {
      format = MaskTextInputFormatter(
          mask: '$formatter', type: MaskAutoCompletionType.lazy);
    } else {
      format =
          MaskTextInputFormatter(mask: null, type: MaskAutoCompletionType.lazy);
    }
    return format;
  }
}
