// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../cards/card_quiosques.dart';

class ListViewCard extends StatelessWidget {
  Widget card;
  ListViewCard({
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
          return GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/detailQuiosque");
              },
              child: card);
        },
      ),
    );
  }
}
