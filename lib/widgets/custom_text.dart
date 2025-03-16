import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontFamily: 'poppins',
          letterSpacing: 1.25,
          wordSpacing: 2,
          shadows: [
            Shadow(
              color: Color.fromARGB(127, 0, 0, 0),
              blurRadius: 10,
              offset: Offset(1, 3),
            ),
          ],
        ));
  }
}
