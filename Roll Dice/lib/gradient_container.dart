
import 'package:flutter/material.dart';

import 'dice_roller.dart';
// import 'styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomLeft;

class GradientContainer extends StatefulWidget {

  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {


// we override here to make the class body
@override
Widget build(BuildContext context) {
  return Container(
    //color: Colors.amber,
    decoration: BoxDecoration(
        gradient:
        LinearGradient(begin: startAlignment, end: endAlignment, colors: [
          widget.color1,
          widget.color2,
        ])),
    child: const Center(
      child: DiceRoller(),
    ),
  );
}
}
