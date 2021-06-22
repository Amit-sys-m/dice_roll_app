import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

class HOMESCREEN extends StatefulWidget {
  @override
  _HOMESCREENState createState() => _HOMESCREENState();
}

class _HOMESCREENState extends State<HOMESCREEN> {
  int leftdice = 1;
  int rightdice = 1;

  void roll() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dice Rolling App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onDoubleTap: roll,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image(image: AssetImage("dice-$leftdice.png")),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onDoubleTap: roll,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image(image: AssetImage('dice-$rightdice.png')),
                      ),
                    ),
                  ),
                ],
              ),
              RaisedButton(
                onPressed: roll,
                child: Text(
                  "Roll",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ));
  }
}
