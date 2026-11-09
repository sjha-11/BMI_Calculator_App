import 'package:bmi_calculator_app/main_screen/custom_card/custom_card.dart';
import 'package:bmi_calculator_app/main_screen/system_configs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderCardSettings {
  static double sliderValue = 12;
}

class SliderCard extends CustomCard {
  SliderCard()
    : super(
        cardChild: Container(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 5),
          color: Colors.transparent,
          child: Column(
            spacing: 10,
            children: [
              Text(
                "HEIGHT",
                style: TextStyle(
                  color: SystemConfigs.LIGHT_FONT_COLOR,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "180",
                    style: TextStyle(
                      color: SystemConfigs.LIGHT_FONT_COLOR,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "cm",
                    style: TextStyle(
                      color: SystemConfigs.LIGHT_FONT_COLOR,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Slider(
                min: 1,
                max: 100,
                value: SliderCardSettings.sliderValue,
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      );
}
