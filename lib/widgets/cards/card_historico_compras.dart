import 'package:flutter/material.dart';
import '../../colors/palette.dart';

class CardHistoricoCompras extends StatelessWidget {
  bool shadow;
  CardHistoricoCompras({
    Key? key,
    required this.shadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 4,
        width: 150,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Data do pedido: 25/10/2022",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
                shadowColor: !shadow ? Colors.transparent : null,
                color: const Color.fromARGB(237, 231, 231, 231),
                child: SizedBox(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 20),
                        Row(
                          children: [
                            Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'images/quiosqueImage.png'),
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
                                          width: 100,
                                          child: Text(
                                            "Vitor Amaral",
                                            style: TextStyle(
                                                fontFamily: "Schyler",
                                                fontWeight: FontWeight.w600,
                                                color: Palette.grey.shade700,
                                                overflow: TextOverflow.ellipsis,
                                                fontSize: 16),
                                          ),
                                        ),
                                        const SizedBox(width: 3),
                                        Icon(
                                          Icons.verified,
                                          size: 17,
                                          color: Palette.materialGreen.shade800,
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                      ],
                    ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Pedido concluído", style: TextStyle(color: Colors.grey)),
                SizedBox(width: 5),
                Icon(
                  Icons.check,
                  size: 20,
                  color: Colors.green,
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 70),
            SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 90,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red),
                        onPressed: () {},
                        child: const Text("Ajuda"),
                      )),
                  const SizedBox(width: 20),
                  SizedBox(
                    width: 90,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/detailQuiosque");
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      child: const Text("Locador"),
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    width: 90,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/mensagensPage");
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 134, 134, 134)),
                      child: const Text("Chat"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
