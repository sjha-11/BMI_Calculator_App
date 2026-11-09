import 'package:bmi_calculator_app/main_screen/body/column_first_child.dart';
import 'package:bmi_calculator_app/main_screen/custom_card/custom_card.dart';
import 'package:bmi_calculator_app/main_screen/custom_card/icon_card.dart';
import 'package:flutter/material.dart';

class FemaleCardSettings {}

class FemaleCard extends IconCard {
  // FemaleCard({super.cardBgColor});

  FemaleCard({Function? onTapFunction, Color? cardBgColor})
    : super(
        icon: Icons.female,
        title: "FEMALE",
        onTapFunction: onTapFunction,
        cardBgColor: cardBgColor,
      );

  // FemaleCard.secConst():super.secondConstructor(cardChild: cardChild);

  @override
  void setStateBody() {
    // ColumnFirstChildSettings.femaleBgColor = Colors.redAccent;
  }
}
