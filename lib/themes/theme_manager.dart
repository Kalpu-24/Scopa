import 'package:flutter/material.dart';
import 'package:scopa/themes/dark_theme.dart';
import 'package:scopa/themes/light_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeManager {
  static bool _isDarkMode = false;
  static late SharedPreferences prefs;

  Future<bool> getPrefs() async {
    prefs = await SharedPreferences.getInstance();
    _isDarkMode = prefs.getBool('isDarkMode') ?? false;
    return _isDarkMode;
  }

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    prefs.setBool('isDarkMode', _isDarkMode);
  }

  ThemeData getTheme() {
    return _isDarkMode ? darkTheme : lightTheme;
  }

  bool getIsDarkMode() {
    return _isDarkMode;
  }
}
