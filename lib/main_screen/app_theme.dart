import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    // primaryColor: Color(0xFF0A0E21),
    primaryColor: Colors.orangeAccent,
    // textTheme: GoogleFonts.emilysCandyTextTheme() as TextTheme,
    scaffoldBackgroundColor: Color(0xFF1A1A31),
    appBarTheme: AppBarTheme(backgroundColor: Color(0xFF1A1A31)),
    textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.blueAccent)),
  );
  static ThemeData darkTheme = ThemeData();
}
