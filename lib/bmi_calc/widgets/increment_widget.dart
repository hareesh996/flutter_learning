import 'package:dice_flutter_app/bmi_calc/widgets/card_container.dart';
import 'package:dice_flutter_app/bmi_calc/widgets/text_widgets.dart';
import 'package:dice_flutter_app/bmi_calc/theme/theme_data.dart';
import 'package:flutter/material.dart';

typedef ValueChanged = void Function(int);

class IncrementInput extends StatelessWidget {
  const IncrementInput(
      {super.key,
        required this.value,
        required this.text,
        required this.valueChange});

  final int value;
  final String text;
  final ValueChanged valueChange;

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          largeText(text: text),
          Text('$value', style: bmiThemeData.textTheme.displaySmall),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                heroTag: '$text decrement',
                  onPressed: () {
                    valueChange(value + 1);
                  },
                  child: Icon(
                    Icons.remove,
                    size: bmiThemeData.textTheme.titleLarge?.fontSize,
                  )),
              const SizedBox(
                width: 15,
              ),
              FloatingActionButton(
                heroTag: '$text increment',
                onPressed: () {
                  valueChange(value + 1);
                },
                child: Icon(Icons.add,
                    size: bmiThemeData.textTheme.titleLarge?.fontSize),
              )
            ],
          )
        ],
      ),
    );
  }
}
