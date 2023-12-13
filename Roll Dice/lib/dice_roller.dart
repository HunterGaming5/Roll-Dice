import 'dart:developer' as dev;
import 'dart:math';
import 'package:flutter/material.dart';
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

final random = Random();

class _DiceRollerState extends State<DiceRoller> {
  int activeDice = 1;


  void rollDice() {
    setState(() {
      activeDice = random.nextInt(6) + 1;
    });
    dev.log('The Button is Clicked!');
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          'images/dice-1.png',
          width: 200,
        ),
        const SizedBox(height: 20,),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            //textStyle: const TextStyle(fontSize: 28),
          ),
          onPressed: rollDice,
          child: const Text('Roll Dice', style: TextStyle(fontSize: 28),),
        ),
      ],
    );
  }
}
