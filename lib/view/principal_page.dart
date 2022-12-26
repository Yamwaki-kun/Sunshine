import 'package:flutter/material.dart';
import 'package:sunshine_app/colors/palette.dart';
import 'package:sunshine_app/view/rentals_principal_page.dart';
import '../widgets/custom_animated_bottom_bar.dart';
import 'compras_page.dart';
import 'geo_localization_page.dart';
import 'meu_usuario_page.dart';

class PrincipalPage extends StatefulWidget {
  const PrincipalPage({super.key});

  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

int _currentIndex = 0;
var _inactiveColor = Colors.grey;
var caminhos = [
  const RentalPrincipalPage(),
  const GeoLocalizationPage(),
  const ComprasPage(),
  const MeuUsuarioPage()
];

class _PrincipalPageState extends State<PrincipalPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: caminhos[_currentIndex],
        bottomNavigationBar: CustomAnimatedBottomBar(
          containerHeight: 70,
          backgroundColor: Colors.white,
          selectedIndex: _currentIndex,
          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          onItemSelected: (value) {
            setState(() => _currentIndex = value);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: const Icon(Icons.beach_access),
              title: const Text('Locadores'),
              activeColor: Palette.materialBronze,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.location_on_sharp),
              title: const Text('Localização'),
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
            /*
            BottomNavyBarItem(
              icon: const Icon(Icons.chat_rounded),
              title: const Text('Mensagens'),
              activeColor: Colors.deepPurple,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),*/
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
