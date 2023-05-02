import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text(" Dice Game"),
          backgroundColor: Colors.black,
        ),
        body: const dice(),
      ),
    ),
  );
}

class dice extends StatefulWidget {
  const dice({Key? key}) : super(key: key);

  @override
  _diceState createState() => _diceState();
}

// ignore: camel_case_types
class _diceState extends State<dice> {
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDice = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset("images/dice$leftDice.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightDice = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset("images/dice$rightDice.png"),
            ),
          ),
        ],
      ),
    );
  }
}
