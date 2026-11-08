import 'package:bmi_calculator_app/main_screen/app_bar/custom_app_bar.dart';
import 'package:bmi_calculator_app/main_screen/body/main_screen_body.dart';
import 'package:bmi_calculator_app/main_screen/bottom_bar/custom_bottom_bar.dart';
import 'package:bmi_calculator_app/main_screen/system_configs.dart';
import 'package:flutter/material.dart';

class MainScreenSettings {
  // final SCAFFOLD_BG_COLOR = SystemConfigs.BG_COLOR;
}

class MainScreen extends StatelessWidget {
  late MainScreenSettings mainScreenSettings;

  MainScreen() {
    this.mainScreenSettings = MainScreenSettings();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: this.mainScreenSettings.SCAFFOLD_BG_COLOR,
      appBar: CustomAppBar(),
      body: MainScreenBody(),
      bottomNavigationBar: CustomBottomBar(),
      // bottomNavigationBar: Container(
      //   width: double.infinity,
      //   height: 50,
      //   color: Colors.indigoAccent.shade700,
      // ),
    );
  }
}
