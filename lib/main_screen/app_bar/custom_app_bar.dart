import 'package:bmi_calculator_app/main_screen/app_bar/custom_app_bar_title_wg.dart';
import 'package:bmi_calculator_app/main_screen/system_configs.dart';
import 'package:flutter/material.dart';

class CustomAppBarSettings {
  final double APPBAR_WIDTH = double.infinity;
  final double APPBAR_HEIGHT = 40;

  // final BG_COLOR = SystemConfigs.BG_COLOR;

  final CENTER_TITLE = true;
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  late CustomAppBarSettings customAppBarSettings;

  CustomAppBar() {
    this.customAppBarSettings = CustomAppBarSettings();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: this.customAppBarSettings.BG_COLOR,
      centerTitle: this.customAppBarSettings.CENTER_TITLE,
      title: CustomAppBarTitleWg(),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(
    this.customAppBarSettings.APPBAR_WIDTH,
    this.customAppBarSettings.APPBAR_HEIGHT,
  );
}
