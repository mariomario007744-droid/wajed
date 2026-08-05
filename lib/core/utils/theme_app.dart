import 'package:flutter/material.dart';

abstract class ThemeApp {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Open Sans',
    brightness: Brightness.light,
  );
  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Open Sans',
    brightness: Brightness.dark,
  );
}




