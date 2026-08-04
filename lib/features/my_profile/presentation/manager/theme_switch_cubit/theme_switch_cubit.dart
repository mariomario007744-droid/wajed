import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wajed/features/my_profile/presentation/manager/theme_switch_cubit/theme_switch_state.dart';

  class ThemeSwitchCubit extends Cubit<ThemeSwitchState> {
  ThemeSwitchCubit() : super(ThemeSwitchInitial());
   bool isDarkMode = false;

  void toggleTheme() {
    isDarkMode = !isDarkMode;
    emit(ThemeSwitchInitial());
  }
}
