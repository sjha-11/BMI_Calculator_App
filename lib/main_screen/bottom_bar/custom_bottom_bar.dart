import 'package:flutter/material.dart';

class CustomBottomBarSettings {
  Color containerColor = Color(0xFFEB1555);

  EdgeInsets containerPadding = EdgeInsets.symmetric(vertical: 17);
}

class CustomBottomBar extends StatefulWidget {
  late CustomBottomBarSettings customBottomBarSettings;

  CustomBottomBar() {
    this.customBottomBarSettings = CustomBottomBarSettings();
  }

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Hello World from bottom navbar");
      },
      child: Container(
        color: this.widget.customBottomBarSettings.containerColor,
        padding: this.widget.customBottomBarSettings.containerPadding,
        // height: 40,
        // alignment: Alignment.center,
        child: Text(
          "Calculate",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
