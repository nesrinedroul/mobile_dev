import 'package:challenge_1/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.color1,
    this.color2, {
    super.key,
  });
  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('assets/topshape.png',
              width: 150, height: 150, fit: BoxFit.contain),
          const StyledText('Hello World!'),
          Image.asset(
            'assets/owl.png',
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),
          Image.asset(
            'assets/bottomshape.png',
            width: 150,
            height: 150,
            fit: BoxFit.contain,
          ),
        ]),
      ),
    );
  }
}
