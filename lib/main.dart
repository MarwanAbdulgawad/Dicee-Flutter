import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  int dice1 = 1;
  int dice2 = 1;

  void gen(){
    setState(() {
      dice1 = Random().nextInt(6)+1;
      dice2 = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                gen();
                },
                child: Image.asset('images/dice$dice1.png')

            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                gen();
                },
              child: Image.asset('images/dice$dice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}

 gen(dice1,dice2){
  dice1 = Random().nextInt(6)+1;
  dice2 = Random().nextInt(6)+1;
}



