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
            color: Color(0XFFFD6AE7B),
            blurRadius: 30,
            offset: const Offset(2, 2),
            spreadRadius: 1,
          ),
          //top left corner is lighter
          const BoxShadow(
            color: Color(0xFFFD6AE7B),
            blurRadius: 30,
            offset: Offset(-2, -2),
            spreadRadius: 1,
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFFEACDA3),
            Color(0xFFFD6AE7B),
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
