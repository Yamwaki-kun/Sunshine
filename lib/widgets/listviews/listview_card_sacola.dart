import 'package:flutter/material.dart';

class ListViewCardSacola extends StatelessWidget {
  Widget card;
  ListViewCardSacola({Key? key, required this.card}) : super(key: key);

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
              child: Dismissible(
                  background: Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(200, 244, 67, 54),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: Icon(
                          Icons.cancel,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
                  key: ValueKey(index),
                  child: card));
        },
      ),
    );
  }
}
