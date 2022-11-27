import 'package:flutter/material.dart';
import '../colors/palette.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TextFieldSignin extends StatelessWidget {
  const TextFieldSignin(
      {Key? key,
      required this.labelText,
      required this.hintText,
      required this.sufixIcon,
      required this.controller,
      required this.isPhone,
      required this.isDdd})
      : super(key: key);

  final String labelText;
  final String hintText;
  final Icon sufixIcon;
  final TextEditingController controller;
  final bool isPhone;
  final bool isDdd;

  @override
  Widget build(BuildContext context) {
    //formatação - https://pub.dev/packages/mask_text_input_formatter
    var maskPhone = MaskTextInputFormatter(
        mask: '#####-####', type: MaskAutoCompletionType.lazy);

    var maskDdd =
        MaskTextInputFormatter(mask: '##', type: MaskAutoCompletionType.lazy);

    return TextField(
      controller: controller,
      inputFormatters: !isDdd
          ? !isPhone
              ? []
              : [maskPhone]
          : [maskDdd],
      keyboardType: !isPhone
          ? !isDdd
              ? TextInputType.text
              : const TextInputType.numberWithOptions()
          : const TextInputType.numberWithOptions(),
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
}
