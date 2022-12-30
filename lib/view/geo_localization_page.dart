import 'package:flutter/material.dart';

class GeoLocalizationPage extends StatefulWidget {
  const GeoLocalizationPage({super.key});

  @override
  State<GeoLocalizationPage> createState() => _GeoLocalizationPageState();
}

class _GeoLocalizationPageState extends State<GeoLocalizationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 50,
        width: 50,
        color: Colors.red,
        child: Row(
          children: const [],
        ),
      ),
    );
  }
}
