import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  // constructor -> here we are accepting text
  TextWidget(this.text, {super.key});

  // final is similar to const but allows to be changed once for initialisation
  // this variable corresponds to the this.text, we must use the same name, and this allows us to use the
  // variable throughout the class
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28.0,
      ),
    );
  }
}
