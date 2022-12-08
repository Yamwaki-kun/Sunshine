import 'package:flutter/material.dart';

import '../colors/palette.dart';

class CardQuiosques extends StatelessWidget {
  const CardQuiosques({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            height: 81,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
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
                                    "Quiosque vistamar",
                                    style: TextStyle(
                                        fontFamily: "Schyler",
                                        fontWeight: FontWeight.w600,
                                        color: Palette.grey.shade700,
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 16),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Icon(
                                  Icons.verified,
                                  size: 17,
                                  color: Palette.materialGreen.shade800,
                                )
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow.shade600,
                                  size: 22,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "4.7 PRAIA GRANDE",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade600),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                ),
                const Align(
                    child: Icon(Icons.favorite, size: 22, color: Colors.red)),
              ],
            )));
  }
}
