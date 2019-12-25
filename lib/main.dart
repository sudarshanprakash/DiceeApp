import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(DiceMain());

class DiceMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Dice"),
        ),
        body: NewPage(),
      ),
    );
  }
}

class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  int firstDiceImg = 1;
  int a = 1;
  void click() {
    setState(() {
      firstDiceImg = Random().nextInt(6) + 1;
      a = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
              onPressed: () {
                print("first button was pressed");
                click();
              },
              child: Image.asset("images/dice$firstDiceImg.png")),
        ),
        Expanded(
            child: FlatButton(
                onPressed: () {
                  print("second button was pressed");
                  click();
                },
                child: Image.asset("images/dice$a.png")))
      ],
    );
  }
}
