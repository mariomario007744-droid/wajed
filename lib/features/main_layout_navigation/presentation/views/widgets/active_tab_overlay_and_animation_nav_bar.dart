import 'package:flutter/material.dart';
import 'package:wajed/features/main_layout_navigation/presentation/views/widgets/active_tab_overlay.dart';
import 'package:wajed/features/main_layout_navigation/presentation/views/widgets/animation_push_container_nav_bar.dart';

class ActiveTabOverlayAndAnimationNavBar extends StatelessWidget {
  const ActiveTabOverlayAndAnimationNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 8),
      child: Row(
        children: [AnimationPushContainerNavBar(), ActiveTabOverlay()],
      ),
    );
  }
}
