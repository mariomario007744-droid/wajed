import 'package:flutter/material.dart';
import 'package:wajed/features/main_layout_navigation/presentation/views/widgets/custom_icon_bav_bar.dart';
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
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width /5,
          ),
          CustomIconNavBar(index: index, isSelected: isSelected),
          const SizedBox(height: 4,),
          TextItemNavBar(index: index, isSelected: isSelected),
        ],
      ),
    );
  }
}

