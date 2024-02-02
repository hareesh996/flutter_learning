import 'dart:math';

import 'package:flutter/material.dart';

class DiceePage extends StatefulWidget {
  const DiceePage({super.key});

  @override
  State<DiceePage> createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int rightDicee = 1;
  int leftDicee = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Dicee'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildFloatingActionButton(diceeNum: leftDicee),
            buildFloatingActionButton(diceeNum: rightDicee)
          ],
        ),
      ),
    );
  }

  buildFloatingActionButton({required int diceeNum}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          setState(() {
            rightDicee = Random().nextInt(6) + 1;
            leftDicee = Random().nextInt(6) + 1;
          });
        },
        child: Image.asset('assets/dice$diceeNum.png'),
      ),
    );
  }
}