
import 'package:flutter/material.dart';

import '../theme/theme_data.dart';

largeText({required String text, Color? color}) {
  return Text(text, style: bmiThemeData.textTheme.labelLarge?.copyWith(color: color), textAlign: TextAlign.center,);
}