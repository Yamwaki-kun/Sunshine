// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../../colors/palette.dart';

class CardProductQuiosque extends StatelessWidget {
  bool shadow;
  CardProductQuiosque({
    Key? key,
    required this.shadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shadowColor: !shadow ? Colors.transparent : null,
        child: SizedBox(
            height: MediaQuery.of(context).size.height / 10,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height / 11,
                        width: MediaQuery.of(context).size.width / 4,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            image: DecorationImage(
                                image: AssetImage('images/quiosqueImage.png'),
                                fit: BoxFit.cover))),
                    const SizedBox(width: 13),
                    Padding(
                        padding: const EdgeInsets.only(top: 13),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                    "Cadeira",
                                    style: TextStyle(
                                        fontFamily: "Schyler",
                                        fontWeight: FontWeight.w600,
                                        color: Palette.grey.shade700,
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.attach_money_rounded,
                                  color: Palette.materialGreen,
                                  size: 22,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "45.99",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey.shade600),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                ),
                const Align(
                    child: Icon(Icons.add, size: 22, color: Colors.red)),
              ],
            )));
  }
}
