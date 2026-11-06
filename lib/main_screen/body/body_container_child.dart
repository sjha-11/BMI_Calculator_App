import 'package:bmi_calculator_app/main_screen/body/column_first_child.dart';
import 'package:flutter/material.dart';

class BodyContainerChildSettings {
  double COLUMN_WIDTH = double.infinity;
  double COLUMN_SPACING = 0;
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
      children: [ColumnFirstChild()],
    );
  }
}
