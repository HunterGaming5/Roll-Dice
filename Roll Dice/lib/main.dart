import 'package:flutter/material.dart';
import 'gradient_container.dart';
void main() {
  runApp(
      const MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.black12,
        body: GradientContainer(
            Color.fromARGB(255, 80, 2, 38),
            Color.fromARGB(255, 255, 132, 187),
        ),

      ),
    ),
  );
}
// The following class is a custom class created which inherit the
// the characteristics of a class named StatelessWidget, which also inherit
// its characteristics from the main class widget
// The class StatelessWidget is an abstract class, which means that
// it doesn't contain a body.
// So here so we can create a body for it, we make override for this function


Widget myCustomText(String msg) {
  return Text(
    msg,
    style: TextStyle(
      color: Colors.black,
      fontSize: 30,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.italic,
      letterSpacing: 8,
      wordSpacing: 8,
      //height: 10,
      shadows: const [
        Shadow(
          color: Colors.amber,
          offset: Offset(15, 10),
          blurRadius: 10,
        )
      ],
      decoration: TextDecoration.combine([
        TextDecoration.overline,
        TextDecoration.underline,
        TextDecoration.lineThrough,
      ]),
      decorationColor: Colors.blueAccent,
      decorationStyle: TextDecorationStyle.wavy,
      decorationThickness: 10,
    ),
  );
}