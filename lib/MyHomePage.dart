import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<AssetImage> diceImages = [
    AssetImage('assets/dice1.png'),
    AssetImage('assets/dice2.png'),
    AssetImage('assets/dice3.png'),
    AssetImage('assets/dice4.png'),
    AssetImage('assets/dice5.png'),
    AssetImage('assets/dice6.png'),
  ];

  int _diceIndex = 0;

  void _rollDice() 
  {
    setState(() {
      _diceIndex = Random().nextInt(diceImages.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Image(
              height: 150,
              width: 150,
              image: diceImages[_diceIndex],
            ),

            Container(height: 100,),

            Container(
              width: 150,
              child: MaterialButton(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    width: 2,
                    color: Colors.white
                  )
                ),
                child: Text(
                  "Roll",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
                onPressed: _rollDice,
              ),
            )

          ],
        ),
      ),
    );
  }
}