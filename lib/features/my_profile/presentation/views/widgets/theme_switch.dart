import 'package:flutter/material.dart';
import 'package:wajed/const.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({super.key});

  final bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
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
                  isDarkMode ? 'Light mode' : 'Dark mode',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  isDarkMode ? 'Dark mode is enabled' : 'Light mode is enabled',
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Switch(
            value: isDarkMode,
            activeThumbColor: kPrimaryColor,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
