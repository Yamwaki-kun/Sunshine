import 'package:flutter/material.dart';

class LogoSizedBox extends StatelessWidget {
  const LogoSizedBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      height: 130,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          "images/logo.png",
        ),
      ),
    );
  }
}
