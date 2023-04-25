import 'package:flutter/material.dart';

class ExibeTextField extends StatelessWidget {
  const ExibeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
          hintText: "Corno", hintStyle: TextStyle(color: Colors.black)),
    );
  }
}
