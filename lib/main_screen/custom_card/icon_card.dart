import 'package:bmi_calculator_app/main_screen/custom_card/custom_card.dart';
import 'package:bmi_calculator_app/main_screen/system_configs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconCardSettings {
  static double columnSpacing = 15;

  static double iconSize = 80;

  static MainAxisAlignment mainAxisAlignment = MainAxisAlignment.spaceBetween;

  static Color textColor = SystemConfigs.LIGHT_FONT_COLOR;

  static double textSize = 18;

  static FontWeight fontWeight = FontWeight.bold;

  static EdgeInsets containerPadding = EdgeInsets.symmetric(
    vertical: 25,
    horizontal: 5,
  );

  static Color iconColor = Colors.white;
}

class IconCard extends CustomCard {
  IconCardSettings iconCardSettings = IconCardSettings();

  IconCard({
    IconData? icon,
    String? title,
    double? iconSize,
    Color? textColor,
    double? fontSize,
    FontWeight? fontWeight,
    Color? iconColor,
    super.cardBgColor,
    super.onTapFunction,
  }) : super(
         cardChild: Container(
           padding: IconCardSettings.containerPadding,
           color: Colors.transparent,
           child: Column(
             spacing: IconCardSettings.columnSpacing,
             mainAxisAlignment: IconCardSettings.mainAxisAlignment,
             children: [
               Icon(
                 icon,
                 size: iconSize ?? IconCardSettings.iconSize,
                 color: iconColor ?? IconCardSettings.iconColor,
               ),
               Text(
                 title ?? "",
                 style: TextStyle(
                   color: textColor ?? IconCardSettings.textColor,
                   fontSize: fontSize ?? IconCardSettings.textSize,
                   fontWeight: fontWeight ?? IconCardSettings.fontWeight,
                 ),
               ),
             ],
           ),
         ),
       );
}
