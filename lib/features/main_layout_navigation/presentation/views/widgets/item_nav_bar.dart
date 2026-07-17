import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wajed/const.dart';
import 'package:wajed/features/main_layout_navigation/presentation/views/widgets/counter_notifications_nav_bar.dart';
import 'package:wajed/features/main_layout_navigation/presentation/views/widgets/navigation_bar_list.dart';
import 'package:wajed/features/main_layout_navigation/presentation/views/widgets/text_item_nav_bar.dart';

class ItemNavBar extends StatelessWidget {
  const ItemNavBar({
    super.key,
    required this.index,
    required this.isSelected,
    required this.onTap,
  });
  final int index;
  final bool isSelected;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
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
          ),
          const SizedBox(height: 4),
          TextItemNavBar(index: index, isSelected: isSelected),
        ],
      ),
    );
  }
}
