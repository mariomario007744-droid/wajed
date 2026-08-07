import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wajed/core/utils/assets.dart';

abstract class CustomPopupMenuItemsChattingview {
  static List<PopupMenuEntry<String>> getItems(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    final Color iconColor = isDark ? Colors.white.withValues(alpha:  0.6) : Colors.black.withValues(alpha:  0.6);

    return [
      PopupMenuItem<String>(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.call_outlined, color: iconColor),
            const SizedBox(width: 4),
            const Text('voice call'),
          ],
        ),
        onTap: () {},
      ),
      PopupMenuItem<String>(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.camera_alt_outlined, color: iconColor),
            const SizedBox(width: 4),
            const Text('video call'),
          ],
        ),
        onTap: () {},
      ),
      PopupMenuItem<String>(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(AssetsData.iconBlock,colorFilter: ColorFilter.mode(iconColor,BlendMode.srcIn)),
            const SizedBox(width: 4),
            const Text('Block'),
          ],
        ),
        onTap: () {},
      ),
      PopupMenuItem<String>(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(AssetsData.deleteIcon,colorFilter: ColorFilter.mode(iconColor,BlendMode.srcIn)),
            const SizedBox(width: 4),
            const Text('Delete chat'),
          ],
        ),
        onTap: () {},
      ),
    ];
  }
}