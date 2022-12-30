import 'package:flutter/material.dart';
import 'package:sunshine_app/widgets/listviews/listview_card_sacola.dart';

import 'card_item_sacola.dart';

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
        color: const Color.fromARGB(90, 255, 255, 255),
        margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 40,
          right: MediaQuery.of(context).size.width / 40,
          top: MediaQuery.of(context).size.height / 10,
          bottom: MediaQuery.of(context).size.height / 25,
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.52,
              width: MediaQuery.of(context).size.width,
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListViewCardSacola(
                  card: CardItemSacola(shadow: false),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                SizedBox(width: 10),
                Text(
                  "Total: ",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 161, 161, 161),
                      fontFamily: "Schyler",
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text("R\$: 450,50",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 121, 121, 121),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Schyler")),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                SizedBox(width: 10),
                Icon(Icons.credit_card,
                    color: Color.fromARGB(255, 124, 124, 124)),
                SizedBox(width: 10),
                Text(
                  "Final 3096",
                  style: TextStyle(color: Color.fromARGB(255, 124, 124, 124)),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 244, 67, 54)),
                  child: const Text("Cancelar"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 0, 128, 233)),
                    onPressed: () {},
                    child: const Text("Finalizar Pedido")),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ));
  }
}
