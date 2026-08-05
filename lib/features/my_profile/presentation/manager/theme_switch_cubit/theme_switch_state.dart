import 'package:flutter/material.dart';

abstract class ThemeSwitchState {}

final class ThemeSwitchInitial extends ThemeSwitchState {
  ThemeSwitchInitial();
}

final class ChangeThemeState extends ThemeSwitchState {
  final ThemeMode themeMode;
  ChangeThemeState({required this.themeMode});
}