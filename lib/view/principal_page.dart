import 'package:flutter/material.dart';
import 'package:sunshine_app/colors/palette.dart';
import 'package:sunshine_app/widgets/search_text_field.dart';
import '../widgets/card_quiosques.dart';
import '../widgets/custom_animated_bottom_bar.dart';

class PrincipalPage extends StatefulWidget {
  const PrincipalPage({super.key});

  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

int _currentIndex = 0;
var _inactiveColor = Colors.grey;

class _PrincipalPageState extends State<PrincipalPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("images/backgroundMenu.png"),
            fit: BoxFit.cover,
          )),
          child: Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    const SizedBox(height: 70),
                    Padding(
                      padding: const EdgeInsets.only(left: 13, right: 13),
                      child: SearchTextField(controller: controller),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: ScrollConfiguration(
                        behavior: MyBehavior(),
                        child: ListView.builder(
                          reverse: true,
                          itemCount: 10,
                          physics: const ScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return const CardQuiosques();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomAnimatedBottomBar(
          containerHeight: 70,
          backgroundColor: Colors.white,
          selectedIndex: _currentIndex,
          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          onItemSelected: (index) => setState(() => _currentIndex = index),
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: const Icon(Icons.beach_access),
              title: const Text('Quiosques'),
              activeColor: Palette.materialBronze,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.location_on_sharp),
              title: const Text(
                'Localização',
              ),
              activeColor: Palette.materialBlueApp,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.attach_money_outlined),
              title: const Text('Compras'),
              activeColor: Colors.green,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.person),
              title: const Text('Meu usuário'),
              activeColor: Colors.blue,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
