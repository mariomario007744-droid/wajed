import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wajed/core/utils/getter_setter_theme_mode.dart';
import 'package:wajed/features/my_profile/presentation/manager/theme_switch_cubit/theme_switch_state.dart';


class ThemeSwitchCubit extends Cubit<ThemeSwitchState> {
  ThemeSwitchCubit() : super(ThemeSwitchInitial());

  Future<void> toggleTheme({required bool isDarkTheme}) async {

    await GetterSetterThemeMode.setCurrentThemeMode(
      darkTheme: !isDarkTheme,
    );
    emit(ChangeThemeState(themeMode: isDarkTheme ? ThemeMode.light : ThemeMode.dark));
  }
}
