import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool isSelected = false;

  var tm = ThemeMode.light;

  void themeModeChange(bool newThemeValue) async {
    isSelected = newThemeValue;
    if (isSelected == false) {
      tm = ThemeMode.light;
    } else {
      tm = ThemeMode.dark;
    }

    notifyListeners();
  }
}
