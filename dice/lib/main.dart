import 'package:flutter/material.dart';
import 'package:dice/gradient_container.dart';

void main() {
  // runApp takes a widget tree as an argument that defines the structure of the UI
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(255, 238, 53, 53),
            Color.fromARGB(255, 236, 100, 216)),
      ),
    ),
  );
}
