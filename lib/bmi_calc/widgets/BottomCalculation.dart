
import 'package:dice_flutter_app/bmi_calc/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

class BottomCalculation extends StatelessWidget {
  const BottomCalculation({
    super.key,
    required this.text,
    required this.onPressed
  });

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      key: UniqueKey(),
      onPressed: () {
        onPressed();
      },
      child: Container(
        padding: EdgeInsets.all(20),
        child: largeText(text: text, color: Colors.white),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFEB1555)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all(LinearBorder.none),
      ),
    );
  }
}