import 'package:bmi_calculator_app/main_screen/custom_card/custom_card_child.dart';
import 'package:bmi_calculator_app/main_screen/system_configs.dart';
import 'package:flutter/material.dart';

abstract class ICustomCardServices {
  void onTapMethodBeforeState();

  void setStateBody();
}

class CustomCardSettings {
  late Color cardBgColor;

  late IconData icon;

  int counter = 0;

  CustomCardSettings({IconData? icon, Color? cardBgColor}) {
    this.icon = icon ?? Icons.sentiment_dissatisfied;
    this.cardBgColor = cardBgColor ?? SystemConfigs.BG_COLOR;
  }
}

class CustomCard extends StatefulWidget implements ICustomCardServices {
  late CustomCardSettings customCardSettings;

  Widget? cardChild;

  CustomCard({IconData? icon, Color? cardBgColor, super.key}) {
    this.customCardSettings = CustomCardSettings(
      icon: icon,
      cardBgColor: cardBgColor,
    );
  }

  CustomCard.secondConstructor({required Widget cardChild, super.key}) {
    this.customCardSettings = CustomCardSettings();
    this.cardChild = cardChild;
  }

  @override
  State<CustomCard> createState() => _CustomCardState();

  @override
  void onTapMethodBeforeState() {
    print("hello iam in the onTapMethod");
  }

  @override
  void setStateBody() {
    // this.customCardSettings.cardBgColor =
    //     (this.customCardSettings.counter++ % 2) == 0
    //     ? Colors.green
    //     : Colors.orangeAccent;
  }
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: this.widget.customCardSettings.cardBgColor,
      child: this.checkIfChildExist(),
    );
  }

  Widget checkIfChildExist() {
    return this.widget.cardChild ??
        CustomCardChild(icon: this.widget.customCardSettings.icon);
  }

  void doSequence() {
    this.widget.onTapMethodBeforeState();
    setState(this.widget.setStateBody);
  }
}
