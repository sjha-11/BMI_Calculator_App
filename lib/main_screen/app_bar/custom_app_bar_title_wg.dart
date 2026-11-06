import 'package:bmi_calculator_app/main_screen/system_configs.dart';
import 'package:flutter/material.dart';

class CustomAppBarTitleWgSettings {
  final FONT_SIZE = SystemConfigs.MAIN_FONT_SIZE;

  final FONT_WEIGHT = FontWeight.bold;

  final FONT_COLOR = SystemConfigs.LIGHT_FONT_COLOR;

  String textTitle = "BMI Calculator";
}

class CustomAppBarTitleWg extends StatelessWidget {
  late CustomAppBarTitleWgSettings _customAppBarTitleWgSettings;

  CustomAppBarTitleWg() {
    this._customAppBarTitleWgSettings = CustomAppBarTitleWgSettings();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      this._customAppBarTitleWgSettings.textTitle,
      style: TextStyle(
        color: this._customAppBarTitleWgSettings.FONT_COLOR,
        fontSize: this._customAppBarTitleWgSettings.FONT_SIZE,
        fontWeight: this._customAppBarTitleWgSettings.FONT_WEIGHT,
      ),
    );
  }
}
