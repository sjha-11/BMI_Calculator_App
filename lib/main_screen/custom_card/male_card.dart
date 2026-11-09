import 'dart:math';

import 'package:bmi_calculator_app/main_screen/custom_card/custom_card.dart';
import 'package:bmi_calculator_app/main_screen/custom_card/icon_card.dart';
import 'package:flutter/material.dart';

class MaleCardSettings {
  IconData icon = Icons.male;
}

class MaleCard extends IconCard {
  // MaleCard({super.cardBgColor});

  MaleCard({Function? onTapFunction, Color? cardBgColor})
    : super(
        icon: Icons.male,
        title: "MALE",
        onTapFunction: onTapFunction,
        cardBgColor: cardBgColor,
      );

  // MaleCard.second(Function? onTapFunction)
  //   : super.secondConstructor(
  //       cardChild: Container(
  //         padding: EdgeInsets.symmetric(vertical: 65, horizontal: 0),
  //         alignment: Alignment.center,
  //         child: Text("MALE"),
  //       ),
  //       onTapFunction: onTapFunction,
  //     );

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

    // super.customCardSettings.icon = icons[randomNum];
    super.customCardSettings.cardBgColor = colors[randomNum2];
  }
}
