import 'package:bmi_calculator_app/main_screen/body/body_child.dart';
import 'package:flutter/material.dart';

class MainScreenBodySettings {
  final SAFEAREA_BOTTOM = true;
}

class MainScreenBody extends StatelessWidget {
  late MainScreenBodySettings mainScreenBodySettings;

  MainScreenBody() {
    this.mainScreenBodySettings = MainScreenBodySettings();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: this.mainScreenBodySettings.SAFEAREA_BOTTOM,
      child: BodyChild(),
    );
  }
}
