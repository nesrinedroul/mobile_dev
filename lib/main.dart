import 'package:challenge_1/widgets/gradient_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
    body: GradientContainer(
        Color.fromARGB(255, 58, 111, 226), Color.fromARGB(255, 158, 123, 245)),
  )));
  // runApp() is a function that takes a widget and makes it the root of the widget tree.
}
