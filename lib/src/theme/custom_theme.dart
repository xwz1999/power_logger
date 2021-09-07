import 'package:flutter/material.dart';

class CustomTheme {
  factory CustomTheme() => _instance;

  static CustomTheme get instance => _instance;
  static late CustomTheme _instance = CustomTheme._();

  CustomTheme._() {
    follow = true;
  }

  ThemeData? customTheme;
  late bool follow;

  void setThemeData(bool state) {
    follow = state;
    if (follow) {
      customTheme = null;
    } else {
      customTheme = ThemeData.light();
    }
  }
}
