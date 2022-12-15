import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
              height: MediaQuery.of(context).size.height / 10,
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 4.5),
                child: const Text(
                  "Históricos de compras",
                  style: TextStyle(
                      color: Color.fromARGB(255, 163, 163, 163), fontSize: 20),
                )),
            /*Card(
              child: Container(
                height: 20,
                width: 20,
                color: Colors.red,
              ),
            )*/
          ],
        ),
      ),
    );
  }
}
