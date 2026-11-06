import 'package:flutter/material.dart';

class CustomCardChildColumnIconSettings {
  late IconData icon;

  late double iconSize;

  late Color iconColor;

  CustomCardChildColumnIconSettings(
    IconData? icon,
    double? iconSize,
    Color? iconColor,
  ) {
    this.icon = icon ?? Icons.male;
    this.iconSize = iconSize ?? 50;
    this.iconColor = iconColor ?? Colors.white;
  }
}

class CustomCardChildColumnIcon extends StatelessWidget {
  late CustomCardChildColumnIconSettings customCardChildColumnIconSettings;

  CustomCardChildColumnIcon({
    IconData? icon,
    double? iconSize,
    Color? iconColor,
    super.key,
  }) {
    this.customCardChildColumnIconSettings = CustomCardChildColumnIconSettings(
      icon,
      iconSize,
      iconColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Icon(
      this.customCardChildColumnIconSettings.icon,
      size: this.customCardChildColumnIconSettings.iconSize,
      color: this.customCardChildColumnIconSettings.iconColor,
    );
  }
}
