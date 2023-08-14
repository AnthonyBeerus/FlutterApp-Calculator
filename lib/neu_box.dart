import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final child;
  const NeuBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.shade900,
        boxShadow: [
          //bottom right corner is darker
          BoxShadow(
            color: Color(0XFFF060610),
            blurRadius: 15,
            offset: const Offset(3, 3),
            spreadRadius: 1,
          ),
          //top left corner is lighter
          const BoxShadow(
            color: Color(0xFFF3D4650),
            blurRadius: 15,
            offset: Offset(-4, -4),
            spreadRadius: 1,
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF1d2630),
            Color(0xFF1d2630),
          ],
          stops: [
            0.1,
            0.9,
          ],
        ),
      ),
      child: Center(child: child),
    );
  }
}
