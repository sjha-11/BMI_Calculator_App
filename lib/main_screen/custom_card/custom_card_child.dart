import 'package:bmi_calculator_app/main_screen/custom_card/custom_card_child_column.dart';
import 'package:flutter/material.dart';

class CustomCardChildSettings {
  EdgeInsets padding = EdgeInsets.symmetric(vertical: 35, horizontal: 25);

  late IconData icon;

  CustomCardChildSettings(IconData? icon) {
    this.icon = icon ?? Icons.sentiment_dissatisfied;
  }
}

class CustomCardChild extends StatefulWidget {
  late CustomCardChildSettings cardChildSettings;

  CustomCardChild({IconData? icon, super.key}) {
    this.cardChildSettings = CustomCardChildSettings(icon);
  }

  @override
  State<CustomCardChild> createState() => _CustomCardChildState();
}

class _CustomCardChildState extends State<CustomCardChild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: this.widget.cardChildSettings.padding,
      child: CustomCardChildColumn(icon: this.widget.cardChildSettings.icon),
    );
  }
}
