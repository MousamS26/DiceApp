import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          title: Text('DiceApp'),
          backgroundColor: Colors.pink,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;
  void changeDice(){
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: (){
                changeDice();
              },
              child: Image.asset('images/dice$leftDice.png'
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: (){
                changeDice();
              },
              child: Image.asset('images/dice$rightDice.png'
              ),
            ),
          )
        ],
      ),
    );
  }
}