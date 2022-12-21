import 'package:flutter/material.dart';
import '../../colors/palette.dart';

class CardSacola extends StatelessWidget {
  bool shadow;
  CardSacola({
    Key? key,
    required this.shadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shadowColor: !shadow ? Colors.transparent : null,
        color: const Color.fromARGB(255, 243, 243, 243),
        margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 40,
          right: MediaQuery.of(context).size.width / 40,
          top: MediaQuery.of(context).size.height / 10,
          bottom: MediaQuery.of(context).size.height / 40,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 20),
            Row(
              children: const [Text("Imagem")],
            ),
          ],
        ));
  }
}
