import 'package:bmi_calculator_app/main_screen/body/column_first_child.dart';
import 'package:bmi_calculator_app/main_screen/body/column_second_child.dart';
import 'package:bmi_calculator_app/main_screen/body/column_third_child.dart';
import 'package:flutter/material.dart';

class BodyContainerChildSettings {
  double COLUMN_SPACING = 15;

  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center;
}

class BodyContainerChild extends StatelessWidget {
  late BodyContainerChildSettings bodyContainerChildSettings;

  BodyContainerChild() {
    this.bodyContainerChildSettings = BodyContainerChildSettings();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: this.bodyContainerChildSettings.COLUMN_SPACING,
      mainAxisAlignment: this.bodyContainerChildSettings.mainAxisAlignment,
      children: [ColumnFirstChild(), ColumnSecondChild(), ColumnThirdChild()],
    );
  }
}
