import 'package:flutter/material.dart';
import 'package:wajed/const.dart';
import 'package:wajed/features/main_layout_navigation/presentation/views/widgets/navigation_bar_list.dart';

class TextItemNavBar extends StatelessWidget {
  const TextItemNavBar({super.key, required this.isSelected,required this.index});
  final bool isSelected;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Text(
      NavigationBarList.items[index].label,
      style: TextStyle(
        fontSize: 12,
        color: isSelected? kPrimaryColor : Colors.grey,
        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
