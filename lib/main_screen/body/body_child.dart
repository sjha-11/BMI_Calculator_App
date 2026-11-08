import 'package:bmi_calculator_app/main_screen/body/body_container_child.dart';
import 'package:flutter/material.dart';

class BodyChildSettings {
  // Alignment CONTAINER_ALIGNMENT = Alignment.topCenter;

  double CONTAINER_HEIGHT = double.infinity;
  double CONTAINER_WIDTH = double.infinity;

  // Color CONTAINER_BG_COLOR = Colors.black26;

  EdgeInsets PADDING = EdgeInsets.symmetric(vertical: 10, horizontal: 20);
}

class BodyChild extends StatelessWidget {
  late BodyChildSettings bodyChildSettings;

  BodyChild() {
    this.bodyChildSettings = BodyChildSettings();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.bodyChildSettings.CONTAINER_HEIGHT,
      width: this.bodyChildSettings.CONTAINER_WIDTH,
      // alignment: this.bodyChildSettings.CONTAINER_ALIGNMENT,
      // color: this.bodyChildSettings.CONTAINER_BG_COLOR,
      padding: this.bodyChildSettings.PADDING,
      child: BodyContainerChild(),
    );
  }
}
