import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;
  final _detailsColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: borderConfig(),
        enabledBorder: borderConfig(),
        suffixIcon: Icon(Icons.search, color: _detailsColor.shade500),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      ),
    );
  }

  OutlineInputBorder borderConfig() {
    return OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: _detailsColor.shade300),
      borderRadius: const BorderRadius.all(Radius.circular(25)),
    );
  }
}
