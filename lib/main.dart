import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wajed/core/utils/app_routing.dart';
import 'package:wajed/core/utils/getter_setter_theme_mode.dart';
import 'package:wajed/core/utils/theme_app.dart';
import 'package:wajed/features/my_profile/presentation/manager/theme_switch_cubit/theme_switch_cubit.dart';
import 'package:wajed/features/my_profile/presentation/manager/theme_switch_cubit/theme_switch_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ThemeMode currentThemeMode = await GetterSetterThemeMode.getCurrentThemeMode();
  runApp(Wajed(currentThemeMode: currentThemeMode));
}

class Wajed extends StatelessWidget {
  const Wajed({super.key,required this.currentThemeMode});

  final ThemeMode currentThemeMode;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeSwitchCubit(),
      child: BlocBuilder<ThemeSwitchCubit, ThemeSwitchState>(
        builder: (context, state) {
          return MaterialApp.router(
            themeMode: state is ChangeThemeState ? state.themeMode : currentThemeMode,
            theme: ThemeApp.lightTheme,
            darkTheme: ThemeApp.darkTheme,
            debugShowCheckedModeBanner: false,
            routerConfig: AppRoutes.router,
          );
        },
      ),
    );
  }
}
