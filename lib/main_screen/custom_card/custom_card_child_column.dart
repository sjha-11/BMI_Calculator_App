import 'package:bmi_calculator_app/main_screen/custom_card/custom_card_child_column_icon.dart';
import 'package:flutter/material.dart';

class CustomCardChildColumnSettings {
  double spacing = 10;

  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center;

  late IconData icon;

  CustomCardChildColumnSettings(IconData? icon) {
    this.icon = icon ?? Icons.sentiment_dissatisfied;
  }
}

class CustomCardChildColumn extends StatelessWidget {
  late CustomCardChildColumnSettings cardChildColumnSettings;

  CustomCardChildColumn({IconData? icon, super.key}) {
    this.cardChildColumnSettings = CustomCardChildColumnSettings(icon);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: this.cardChildColumnSettings.spacing,
      mainAxisAlignment: this.cardChildColumnSettings.mainAxisAlignment,
      children: [
        CustomCardChildColumnIcon(icon: this.cardChildColumnSettings.icon),
        Text(
          "FEMALE",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.white60,
          ),
        ),
      ],
    );
  }
}
