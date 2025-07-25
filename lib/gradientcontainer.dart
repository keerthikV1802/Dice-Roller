import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color.fromARGB(255, 180, 49, 49), Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: const Center(
            child: DiceRoller()
        )
    );
  }
}
