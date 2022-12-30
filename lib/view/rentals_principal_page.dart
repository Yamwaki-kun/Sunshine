import 'package:flutter/material.dart';
import '../widgets/cards/card_quiosques.dart';
import '../widgets/listviews/listview_cards.dart';
import '../widgets/scroll_cards_behavior.dart';
import '../widgets/textfields/text_field_search.dart';

class RentalPrincipalPage extends StatefulWidget {
  const RentalPrincipalPage({super.key});

  @override
  State<RentalPrincipalPage> createState() => _RentalPrincipalPageState();
}

class _RentalPrincipalPageState extends State<RentalPrincipalPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("images/backgroundMenu.png"),
        fit: BoxFit.cover,
      )),
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 2, right: 5),
          child: Column(
            children: [
              const SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: SearchTextField(controller: controller),
              ),
              const SizedBox(height: 35),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Proximo de você:",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 138, 138, 138)),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.46,
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(54, 255, 255, 255),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListViewCard(
                        card: CardQuiosques(
                          shadow: true,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
