import 'package:bmi_calculator_app/main_screen/custom_card/custom_card.dart';
import 'package:flutter/material.dart';

class ColumnThirdChildSettings {
  double SPACING = 10;
}

class ColumnThirdChild extends StatelessWidget {
  late ColumnThirdChildSettings columnThirdChildSettings;

  ColumnThirdChild() {
    this.columnThirdChildSettings = ColumnThirdChildSettings();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: this.columnThirdChildSettings.SPACING,
      children: [
        Expanded(
          child: CustomCard(
            cardChild: Container(
              padding: EdgeInsets.symmetric(vertical: 65, horizontal: 0),
              alignment: Alignment.center,
              child: Text("MALE"),
            ),
          ),
        ),
        Expanded(
          child: CustomCard(
            cardChild: Container(
              padding: EdgeInsets.symmetric(vertical: 65, horizontal: 0),
              alignment: Alignment.center,
              child: Text("MALE"),
            ),
          ),
        ),
      ],
    );
  }
}
