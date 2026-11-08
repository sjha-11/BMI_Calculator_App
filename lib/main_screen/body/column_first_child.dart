import 'package:bmi_calculator_app/main_screen/custom_card/custom_card.dart';
import 'package:bmi_calculator_app/main_screen/custom_card/female_Card.dart';
import 'package:bmi_calculator_app/main_screen/custom_card/male_card.dart';
import 'package:bmi_calculator_app/main_screen/system_configs.dart';
import 'package:flutter/material.dart';

enum Gender { MALE, FEMALE }

class ColumnFirstChildSettings {
  double SPACING = 10;

  Color maleBgColor = SystemConfigs.BG_COLOR;
  Color femaleBgColor = SystemConfigs.BG_COLOR;
  Color clickedColor = Color(0xFF232136);
  Color unClickedColor = SystemConfigs.BG_COLOR;

  Gender? clickedCard;
}

class ColumnFirstChild extends StatefulWidget {
  late ColumnFirstChildSettings columnFirstChildSettings;

  ColumnFirstChild() {
    this.columnFirstChildSettings = ColumnFirstChildSettings();
  }

  @override
  State<ColumnFirstChild> createState() => _ColumnFirstChildState();
}

class _ColumnFirstChildState extends State<ColumnFirstChild> {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: this.widget.columnFirstChildSettings.SPACING,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              this.clickCard(Gender.FEMALE);
            },
            child: FemaleCard(
              cardBgColor: this.widget.columnFirstChildSettings.femaleBgColor,
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              this.clickCard(Gender.MALE);
            },
            child: MaleCard(
              cardBgColor: this.widget.columnFirstChildSettings.maleBgColor,
            ),
          ),
        ),
      ],
    );
  }

  void clickCard(Gender cardType) {
    print("iam tapped ${cardType.toString()}");
    setState(() {
      this.setStateBodyImp(cardType);
    });
  }

  void setStateBodyImp(Gender cardType) {
    if (this.widget.columnFirstChildSettings.clickedCard == null) {
      if (cardType == Gender.MALE) {
        this.widget.columnFirstChildSettings.maleBgColor =
            this.widget.columnFirstChildSettings.clickedColor;

        this.widget.columnFirstChildSettings.clickedCard = Gender.MALE;

        return;
      }

      this.widget.columnFirstChildSettings.femaleBgColor =
          this.widget.columnFirstChildSettings.clickedColor;

      this.widget.columnFirstChildSettings.clickedCard = Gender.FEMALE;

      return;
    }

    if (this.widget.columnFirstChildSettings.clickedCard == Gender.MALE) {
      if (cardType == Gender.MALE) {
        this.widget.columnFirstChildSettings.maleBgColor =
            this.widget.columnFirstChildSettings.unClickedColor;

        this.widget.columnFirstChildSettings.clickedCard = null;

        return;
      }

      this.widget.columnFirstChildSettings.maleBgColor =
          this.widget.columnFirstChildSettings.unClickedColor;

      this.widget.columnFirstChildSettings.femaleBgColor =
          this.widget.columnFirstChildSettings.clickedColor;

      this.widget.columnFirstChildSettings.clickedCard = Gender.FEMALE;

      return;
    }

    // clicked is FEMALE

    if (this.widget.columnFirstChildSettings.clickedCard == Gender.FEMALE) {
      if (cardType == Gender.FEMALE) {
        this.widget.columnFirstChildSettings.femaleBgColor =
            this.widget.columnFirstChildSettings.unClickedColor;

        this.widget.columnFirstChildSettings.clickedCard = null;

        return;
      }

      this.widget.columnFirstChildSettings.femaleBgColor =
          this.widget.columnFirstChildSettings.unClickedColor;

      this.widget.columnFirstChildSettings.maleBgColor =
          this.widget.columnFirstChildSettings.clickedColor;

      this.widget.columnFirstChildSettings.clickedCard = Gender.MALE;

      return;
    }

    // this.widget.columnFirstChildSettings.maleBgColor =
    //     this.widget.columnFirstChildSettings.unClickedColor;
    //
    // this.widget.columnFirstChildSettings.femaleBgColor =
    //     this.widget.columnFirstChildSettings.clickedCard == Gender.FEMALE
    //     ? this.widget.columnFirstChildSettings.unClickedColor
    //     : this.widget.columnFirstChildSettings.clickedColor;
    //
    // this.widget.columnFirstChildSettings.clickedCard =
    //     this.widget.columnFirstChildSettings.clickedCard == Gender.FEMALE
    //     ? null
    //     : Gender.FEMALE;
  }
}
