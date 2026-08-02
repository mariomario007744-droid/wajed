import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wajed/const.dart';
import 'package:wajed/features/main_layout_navigation/presentation/views/widgets/counter_notifications_nav_bar.dart';
import 'package:wajed/features/main_layout_navigation/presentation/views/widgets/navigation_bar_list.dart';

class CustomIconNavBar extends StatelessWidget {
  const CustomIconNavBar({
    super.key,
    required this.index,
    required this.isSelected,
  });

  final int index;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SvgPicture.asset(
          NavigationBarList.items[index].icon,
          colorFilter: ColorFilter.mode(
            isSelected ? kPrimaryColor : Colors.grey,
            BlendMode.srcIn,
          ),
          height: isSelected ? 30 : 24,
        ),
        (NavigationBarList.items[index].badgeCount) > 0
            ? CounterNotificationsNavBar(index: index)
            : SizedBox(),
      ],
    );
  }
}
