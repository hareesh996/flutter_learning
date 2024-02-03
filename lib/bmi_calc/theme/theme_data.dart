import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const labelColor = Color(0xFF858895);

const textTheme = TextTheme(
  // display
  displayLarge: TextStyle(
      fontFamily: 'NotoSans', fontSize: 64, fontWeight: FontWeight.w300),
  displayMedium: TextStyle(
      fontFamily: 'NotoSans', fontSize: 52, fontWeight: FontWeight.w400),
  displaySmall: TextStyle(
      fontFamily: 'NotoSans', fontSize: 44, fontWeight: FontWeight.w400),
  // headline
  headlineLarge: TextStyle(
      fontFamily: 'NotoSans', fontSize: 40, fontWeight: FontWeight.w300),
  headlineMedium: TextStyle(
      fontFamily: 'NotoSans', fontSize: 36, fontWeight: FontWeight.w400),
  headlineSmall: TextStyle(
      fontFamily: 'NotoSans', fontSize: 32, fontWeight: FontWeight.w400),
  // title
  titleLarge: TextStyle(
      fontFamily: 'NotoSans', fontSize: 28, fontWeight: FontWeight.w400),
  titleMedium: TextStyle(
      fontFamily: 'NotoSans',
      fontSize: 24,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15),
  titleSmall: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, letterSpacing: 0.1),
  // body
  bodyLarge: TextStyle(
      fontFamily: 'NotoSans',
      fontSize: 18,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15),
  bodyMedium: TextStyle(
      fontFamily: 'NotoSans',
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25),
  bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  // label
  labelLarge: TextStyle(
      fontFamily: 'NotoSans',
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: labelColor,
      letterSpacing: 0.1),
  labelMedium: TextStyle(
      fontFamily: 'NotoSans',
      fontSize: 18,
      color: labelColor,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5),
  labelSmall: TextStyle(
      fontFamily: 'NotoSans',
      fontSize: 16,
      color: labelColor,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5),
);

var bmiThemeData = ThemeData.dark().copyWith(
    primaryColor: const Color(0xFF0A0C21),
    textTheme: textTheme,
    scaffoldBackgroundColor: const Color(0xFF0A0E21),
    disabledColor: const Color(0xFF8d8e98),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF0A0C21),
    ));