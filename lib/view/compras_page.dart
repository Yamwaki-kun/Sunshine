import 'package:flutter/material.dart';
import 'package:sunshine_app/widgets/cards/card_historico_compras.dart';

import '../widgets/listviews/listview_cards_historico_compras.dart';

class ComprasPage extends StatefulWidget {
  const ComprasPage({super.key});

  @override
  State<ComprasPage> createState() => _ComprasPageState();
}

class _ComprasPageState extends State<ComprasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 17,
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 25),
                child: const Text(
                  "Históricos de compras",
                  style: TextStyle(
                      color: Color.fromARGB(255, 163, 163, 163), fontSize: 20),
                )),
            SizedBox(height: MediaQuery.of(context).size.height / 40),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 1.34,
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListViewCardHistorico(
                    card: CardHistoricoCompras(shadow: false),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        foregroundColor: const Color.fromARGB(255, 202, 253, 204),
        child: const Icon(Icons.shopping_basket_rounded),
        onPressed: () {
          Navigator.pushNamed(context, "/sacolaPage");
        },
      ),
    );
  }
}
