import 'package:flutter/material.dart';
import 'package:sunshine_app/widgets/buttons/button_detail_quiosque.dart';

class ListviewButtonsQuiosque extends StatelessWidget {
  ListviewButtonsQuiosque({
    Key? key,
  }) : super(key: key);

  var listaPesquisa = [
    "Tudo",
    "Guarda-Sol",
    "Cadeiras",
    "Coolers",
    "Mini-Churrasqueiras",
    "Surf",
    "Coletes"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width - 50,
            child: Scrollbar(
              child: ListView.builder(
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: listaPesquisa.length,
                  itemBuilder: (context, index) {
                    return ButtonDetailQuiosque(
                      text: listaPesquisa[index],
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
