import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class AppColor {
  static ThemeData tipo1 =
      FlexColorScheme.light(scheme: FlexScheme.hippieBlue).toTheme;
  static ThemeData tipo2 =
      FlexColorScheme.light(scheme: FlexScheme.aquaBlue).toTheme;
  static ThemeData tipo3 =
      FlexColorScheme.light(scheme: FlexScheme.indigo).toTheme;
}

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toogleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    // ignore: avoid_print
    print('Segundo : $isOn');
    notifyListeners();
  }
}
