// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sunshine_app/colors/palette.dart';
import 'package:sunshine_app/widgets/listviews/listview_buttons_quiosque.dart';
import 'package:sunshine_app/widgets/listviews/listview_cards.dart';

import '../widgets/cards/card_product_quiosque.dart';
import '../widgets/cards/card_quiosques.dart';

class QuiosqueDetail extends StatefulWidget {
  const QuiosqueDetail({super.key});

  @override
  State<QuiosqueDetail> createState() => _QuiosqueDetailState();
}

class _QuiosqueDetailState extends State<QuiosqueDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                //Foto do quiosque
                Stack(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "images/backgroundMenu.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 19),
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Palette.materialBlueApp,
                            size: 35,
                          )),
                    ),
                  ],
                ),
                //const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: CardQuiosques(
                        shadow: false,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/mensagensPage");
                          },
                          icon: const Icon(
                            Icons.message,
                            color: Color.fromARGB(255, 163, 163, 163),
                          )),
                    )
                  ],
                ),
                Container(
                    decoration: const BoxDecoration(),
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: ListviewButtonsQuiosque(),
                    )),
                Card(
                  elevation: 50,
                  color: Colors.transparent,
                  child: SingleChildScrollView(
                    physics: const ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2.10,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 230, 230, 230),
                        ),
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: MediaQuery.removePadding(
                          context: context,
                          removeTop: true,
                          child: ListViewCard(
                              card: CardProductQuiosque(shadow: false)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
