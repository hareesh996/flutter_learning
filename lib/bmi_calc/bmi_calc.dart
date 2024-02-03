import 'package:dice_flutter_app/bmi_calc/pages/bmi_homepage.dart';
import 'package:dice_flutter_app/bmi_calc/theme/theme_data.dart';
import 'package:flutter/material.dart';


class BMICalcPage extends StatelessWidget {

  const BMICalcPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: bmiThemeData,
      home: const BMIHomePage(),
    );
  }

}