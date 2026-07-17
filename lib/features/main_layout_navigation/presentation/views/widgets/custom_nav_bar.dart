import 'package:flutter/material.dart';
import 'package:wajed/features/main_layout_navigation/presentation/views/widgets/active_tab_overlay_and_animation_nav_bar.dart';
import 'package:wajed/features/main_layout_navigation/presentation/views/widgets/list_item_nav_bar.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [ActiveTabOverlayAndAnimationNavBar(), ListItemNavBar()],
    );
  }
}

