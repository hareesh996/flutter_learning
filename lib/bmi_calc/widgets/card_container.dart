import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {

  CardContainer({required this.child, this.color = const Color(0xFF272A4D), Key? key}) : super(key: key);

  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration:  BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          color: color
        ),
        child: child,
      ),
    );
  }
}
