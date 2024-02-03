import 'package:dice_flutter_app/bmi_calc/bmi_calc.dart';
import 'package:dice_flutter_app/dicee.dart';
import 'package:dice_flutter_app/xylophone.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  //runApp(const MyApp());
  runApp(BMICalcPage());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const XyloPhone(),
    );
  }
}


