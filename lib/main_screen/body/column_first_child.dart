import 'package:bmi_calculator_app/main_screen/custom_card/custom_card.dart';
import 'package:bmi_calculator_app/main_screen/custom_card/male_card.dart';
import 'package:flutter/material.dart';

class ColumnFirstChildSettings {
  double SPACING = 15;
}

class ColumnFirstChild extends StatelessWidget {
  late ColumnFirstChildSettings columnFirstChildSettings;

  ColumnFirstChild() {
    this.columnFirstChildSettings = ColumnFirstChildSettings();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: this.columnFirstChildSettings.SPACING,
      children: [CustomCard(), MaleCard()],
    );
  }
}
