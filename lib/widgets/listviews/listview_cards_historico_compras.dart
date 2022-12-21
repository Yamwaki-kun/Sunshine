import 'package:flutter/material.dart';

class ListViewCardHistorico extends StatelessWidget {
  Widget card;
  ListViewCardHistorico({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
        reverse: false,
        itemCount: 10,
        physics: const ScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return card;
        },
      ),
    );
  }
}
