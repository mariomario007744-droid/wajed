import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wajed/const.dart';

abstract class GetterSetterThemeMode {
  static Future<ThemeMode> getCurrentThemeMode() async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String themeMode = prefs.getString(kThemeSaved) ?? 'light';
      return themeMode == 'dark' ? ThemeMode.dark : ThemeMode.light;
  }

  static Future<void> setCurrentThemeMode({required bool darkTheme}) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(kThemeSaved, darkTheme ? 'dark' : 'light');
  }
}