import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DiceRollMain());
}
//material app -> doesn't really change; it is the backbone of the application. Main app itself is a stateless widget

//MaterialApp widget
class DiceRollMain extends StatelessWidget {
  const DiceRollMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DiceRoll(),
    );
  }
}
//End MaterialApp

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  int diceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text ("Dice Roll",
        style: TextStyle(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold,

          
          ),),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: TextButton(
        onPressed: ()=> setState(() {
          //Random.NextInt (n) returns a random value between 0 and n-1
          diceNumber= Random().nextInt(6) + 1;
          print(diceNumber);

            
          }), 

          
        child: Column(
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Image.asset("images/dice-$diceNumber.png"),  
            ),

            SizedBox(
              width: 300,
              height: 300,
              child:Image.asset("images/dice-$diceNumber.png"),  
            ),
            
            
            
          Text ('You rolled a: ${diceNumber * 2}')
          
          ]

        )
        //)
        // Text('You rolled a:$diceNumber')
        //if you want to show numerical value in text, convert to string (the dollar sign shows the conversion)
        )
      ) ,
    );
  }
}


