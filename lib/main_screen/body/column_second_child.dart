import 'package:bmi_calculator_app/main_screen/custom_card/custom_card.dart';
import 'package:flutter/material.dart';

class ColumnSecondChildSettings {}

class ColumnSecondChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomCard.secondConstructor(
            cardChild: Container(
              padding: EdgeInsets.symmetric(vertical: 35, horizontal: 0),
              child: Column(
                spacing: 10,
                children: [
                  Icon(Icons.close, size: 40),
                  Text("PLACEHOLDER", style: TextStyle(color: Colors.white70)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
