import 'package:dice_flutter_app/bmi_calc/widgets/BottomCalculation.dart';
import 'package:dice_flutter_app/bmi_calc/calculate_bmi.dart';
import 'package:dice_flutter_app/bmi_calc/pages/bmi_result.dart';
import 'package:dice_flutter_app/bmi_calc/widgets/card_container.dart';
import 'package:dice_flutter_app/bmi_calc/widgets/gender_selection.dart';
import 'package:dice_flutter_app/bmi_calc/widgets/increment_widget.dart';
import 'package:dice_flutter_app/bmi_calc/widgets/text_widgets.dart';
import 'package:dice_flutter_app/bmi_calc/theme/theme_data.dart';
import 'package:flutter/material.dart';

class BMIHomePage extends StatefulWidget {
  const BMIHomePage({super.key});

  @override
  State<BMIHomePage> createState() => _BMIHomePageState();
}

class _BMIHomePageState extends State<BMIHomePage> {

  Gender? selectedGender;
  int selectedHeight = 182;
  int age = 22;
  int weight = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('BMI Calculator'),
          centerTitle: true
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          genderSelection(),
          heightSelection(context),
          Expanded(
              child: Row(
                children: [weightSelection(), ageSelection()],
              )),
          BottomCalculation(text: 'CALCULATE', onPressed: () {
            print('calculate bmi here');
            final calc = CalculatorBrain(height: selectedHeight, weight: weight);
            final bmiResult = calc.calculateBMI();
            final resultText = calc.getResult(bmiResult);
            final interpretation = calc.getInterpretation(bmiResult);

            Navigator.push(context, MaterialPageRoute(builder: (context) =>  BMIResult(
              bmiResult: bmiResult,
              resultText: resultText,
              interpretation : interpretation
            ), settings: RouteSettings(name: 'result')) );
          },),
        ],
      ),
    );
  }


  weightSelection() {
    return CardContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IncrementInput(
            value: weight,
            text: 'WEIGHT',
            valueChange: (value) {
              setState(() {
                weight = value;
              });
            },
          )
        ],
      ),
    );
  }

  ageSelection() {
    return IncrementInput(
      value: age,
      text: 'AGE',
      valueChange: (value) {
        setState(() {
          age = value;
        });
      },
    );
  }

  heightSelection(BuildContext context) {
    return CardContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          largeText(text: 'HEIGHT'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text('$selectedHeight',
                  style: bmiThemeData.textTheme.displaySmall),
              const Text('cm')
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Slider(
            value: selectedHeight.roundToDouble(),
            onChanged: (value) {
              setState(() {
                selectedHeight = value.round();
              });
            },
            min: 10,
            max: 250,
          )
        ],
      ),
    );
  }

  genderSelection() {
    return Expanded(
      child: Row(
        children: [
          GenderSelection(
              gender: Gender.Male,
              isSelected: selectedGender == Gender.Male,
              selection: genderChange(Gender.Male)),
          GenderSelection(
              gender: Gender.Female,
              isSelected: selectedGender == Gender.Female,
              selection: genderChange(Gender.Female))
        ],
      ),
    );
  }

  genderChange(Gender changeSelectedGender) {
    return () {
      setState(() {
        selectedGender = changeSelectedGender;
      });
    };
  }

}

