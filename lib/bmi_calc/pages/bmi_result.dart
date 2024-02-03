import 'package:dice_flutter_app/bmi_calc/widgets/BottomCalculation.dart';
import 'package:dice_flutter_app/bmi_calc/widgets/card_container.dart';
import 'package:dice_flutter_app/bmi_calc/widgets/text_widgets.dart';
import 'package:dice_flutter_app/bmi_calc/theme/theme_data.dart';
import 'package:flutter/material.dart';

class BMIResult extends StatefulWidget {
  const BMIResult({required this.bmiResult, required this.resultText, required this.interpretation});

  final double bmiResult;
  final String resultText;
  final String interpretation;

  @override
  State<BMIResult> createState() => _BMIResultState();
}

class _BMIResultState extends State<BMIResult> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('BMI Calculator'), centerTitle: true),
      body: Container(
        padding: EdgeInsets.only(right: 10, left: 10, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Your Result', style: bmiThemeData.textTheme.titleLarge),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.all(10),
                color:  Color(0xFF272A4D),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        titleText(text: 'NORMAL', color: Colors.green),
                        Text(
                          widget.bmiResult.toStringAsFixed(1),
                          style: bmiThemeData.textTheme.displayLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 90
                          ),
                        )
                      ],
                    ),


                    Column(
                      children: [
                        titleText(text: 'Normal BMI range:', color: labelColor),
                        titleText(text: '${widget.resultText} - ${widget.interpretation}')
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: titleText(text: 'You have a normal body weight. Good job!'),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.all(15),
                      width: double.infinity,
                      color: bmiThemeData.primaryColor,
                      child: TextButton(
                          onPressed: () {
                            print('save results');
                          },
                          
                          child: titleText(text: 'SAVE RESULT', color: Colors.white),

                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomCalculation(text: 'RE-CALCULATE',  onPressed: () {
              Navigator.pop(context);
            },)
          ],
        ),
      ),
    );
  }

  Text titleText({required String text, Color? color}) => Text(text, style: bmiThemeData.textTheme.titleSmall?.copyWith(
    color: color
  ), textAlign: TextAlign.center);
}
