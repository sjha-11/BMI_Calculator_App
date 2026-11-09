import 'package:bmi_calculator_app/main_screen/custom_card/custom_card.dart';
import 'package:bmi_calculator_app/main_screen/custom_card/slider_card.dart';
import 'package:flutter/material.dart';

class ColumnSecondChildSettings {}

class ColumnSecondChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [Expanded(child: SliderCard())]);
  }
}
