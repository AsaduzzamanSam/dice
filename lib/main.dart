import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        title: Center(child: Text('DICE')),
        backgroundColor: Colors.black26,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNum = Random().nextInt(6) + 1;
                });
              },
              child: Image(
                image: AssetImage('images/dice$leftDiceNum.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightDiceNum = Random().nextInt(6) + 1;
                });
              },
              child: Image(
                image: AssetImage('images/dice$rightDiceNum.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
