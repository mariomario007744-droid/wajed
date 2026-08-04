import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wajed/const.dart';
import 'package:wajed/features/my_profile/presentation/manager/theme_switch_cubit/theme_switch_cubit.dart';
import 'package:wajed/features/my_profile/presentation/manager/theme_switch_cubit/theme_switch_state.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeSwitchCubit(),
      child: BlocBuilder<ThemeSwitchCubit, ThemeSwitchState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: const Color(0xFFE6F7F1),
                  radius: 24,
                  child: Icon(
                    Icons.dark_mode_outlined,
                    color: const Color(0xFF1DB584),
                    size: 24,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        BlocProvider.of<ThemeSwitchCubit>(context).isDarkMode
                            ? 'Dark mode'
                            : 'Light mode',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        BlocProvider.of<ThemeSwitchCubit>(context).isDarkMode
                            ? 'Dark mode is enabled'
                            : 'Light mode is enabled',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Switch(
                  value: BlocProvider.of<ThemeSwitchCubit>(context).isDarkMode,
                  activeThumbColor: kPrimaryColor,
                  onChanged: (value) {
                    BlocProvider.of<ThemeSwitchCubit>(context).toggleTheme();
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
