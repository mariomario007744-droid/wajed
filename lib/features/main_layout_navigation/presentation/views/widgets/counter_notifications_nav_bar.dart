import 'package:flutter/material.dart';
import 'package:wajed/const.dart';
import 'package:wajed/features/main_layout_navigation/presentation/views/widgets/navigation_bar_list.dart';

class CounterNotificationsNavBar extends StatelessWidget {
  const CounterNotificationsNavBar({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -10,
      top: -12,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
          color: kPrimaryColor,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(
            '${NavigationBarList.items[index].badgeCount}',
            style: const TextStyle(color: Colors.white, fontSize: 10),
          ),
        ),
      ),
    );
  }
}
