
import 'package:dice_flutter_app/bmi_calc/widgets/card_container.dart';
import 'package:dice_flutter_app/bmi_calc/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderSelection extends StatelessWidget {
  const GenderSelection({
    required this.gender,
    required this.selection,
    this.isSelected = false,
    super.key,
  });

  final Gender gender;
  final Function selection;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final Color textColor = isSelected ? Colors.white : bmiThemeData.disabledColor ;
    return CardContainer(
        child: GestureDetector(
          onTap: () {
            selection();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(gender.icon, size: 65.0, color: textColor),
              const SizedBox(
                height: 10.0,
              ),
              Text(gender.text, style: bmiThemeData.textTheme.labelLarge?.copyWith(
                  color: textColor
              ), )
            ],
          ),
        ));
  }
}

enum Gender {
  Male(text: 'MALE', icon: FontAwesomeIcons.mars),
  Female(text: 'FEMALE', icon: FontAwesomeIcons.marsAndVenus);

  const Gender({required this.text, required this.icon});

  final String text;
  final IconData icon;
}