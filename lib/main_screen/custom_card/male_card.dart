import 'dart:math';

import 'package:bmi_calculator_app/main_screen/custom_card/custom_card.dart';
import 'package:flutter/material.dart';

class MaleCardSettings {
  IconData icon = Icons.male;
}

class MaleCard extends CustomCard {
  MaleCard() : super(icon: Icons.male);

  @override
  void onTapMethodBeforeState() {
    print("Hello from the MaleCard card");
  }

  @override
  void setStateBody() {
    List<IconData> icons = [
      Icons.g_translate,
      Icons.kayaking,
      Icons.wallet,
      Icons.earbuds,
      Icons.face,
      Icons.qr_code,
      Icons.youtube_searched_for,
    ];

    List<Color> colors = [
      Colors.green,
      Colors.redAccent,
      Colors.white30,
      Colors.yellowAccent,
      Colors.indigo,
      Colors.pinkAccent,
      Colors.deepOrange,
    ];

    int randomNum = Random().nextInt(icons.length);
    int randomNum2 = Random().nextInt(colors.length);

    super.customCardSettings.icon = icons[randomNum];
    super.customCardSettings.cardBgColor = colors[randomNum2];
  }
}
