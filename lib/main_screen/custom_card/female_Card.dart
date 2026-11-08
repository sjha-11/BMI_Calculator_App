import 'package:bmi_calculator_app/main_screen/body/column_first_child.dart';
import 'package:bmi_calculator_app/main_screen/custom_card/custom_card.dart';
import 'package:flutter/material.dart';

class FemaleCardSettings {}

class FemaleCard extends CustomCard {
  FemaleCard({super.cardBgColor});

  @override
  void setStateBody() {
    // ColumnFirstChildSettings.femaleBgColor = Colors.redAccent;
  }
}
