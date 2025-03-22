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
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          // 🖼️ Top Right Image
          Positioned(
            top: 20,
            right: 20,
            child: Image.asset(
              'assets/topshape.png',
              width: 209, // Adjust size if needed
              height: 173,
              fit: BoxFit.contain,
            ),
          ),

          // 🖼️ Bottom Left Image
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              'assets/bottomshape.png',
              width: 220,
              height: 301,
            ),
          ),

          // 📌 Centered Owl + Text
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment:
                  MainAxisAlignment.center, // Ensures good spacing
              children: [
                // 🦉 Owl Image (Centered)
                Image.asset(
                  'assets/owl.png',
                  width: 250,
                  height: 250,
                  fit: BoxFit.contain,
                ),

                const SizedBox(height: 20),

                const Text(
                  'Welcome To Dash App',
                  textAlign: TextAlign.center, // Centers text properly
                  style: TextStyle(
                    fontSize: 30, // Slightly bigger
                    fontWeight: FontWeight.bold,
                    color: Colors.white,

                    overflow: TextOverflow.ellipsis,
                    // Ensures text doesn't overflow
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
