import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentdiceroll= 'assets/images/dice-2.png';

  void rolldice() {
    var diceroll=Random().nextInt(6)+1;    
    setState(() {
      currentdiceroll = 'assets/images/dice-$diceroll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          currentdiceroll,
          width: 300,
        ),
        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
              textStyle: const TextStyle(fontSize: 20),
              backgroundColor:const Color.fromARGB(221, 237, 231, 231)),
          child: const Text('ROLL'),
        )
      ],
    );
  }
}
