import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wajed/core/utils/assets.dart';

abstract class CustomPopupMenuItemsHomePosts {
  static List<PopupMenuEntry<String>> getItems(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    final Color iconColor = isDark
        ? Colors.white.withValues(alpha: 0.6)
        : Colors.black.withValues(alpha: 0.6);

    return [
      PopupMenuItem<String>(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(AssetsData.savrPostIcon,colorFilter: ColorFilter.mode(iconColor,BlendMode.srcIn)),
            SizedBox(width: 4),
            Text('Save Post'),
          ],
        ),
        onTap: () {},
      ),
      PopupMenuItem<String>(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(AssetsData.deleteIcon,colorFilter: ColorFilter.mode(iconColor,BlendMode.srcIn)),
            SizedBox(width: 4),
            Text('Delete'),
          ],
        ),
        onTap: () {},
      ),
    ];
  }
}
