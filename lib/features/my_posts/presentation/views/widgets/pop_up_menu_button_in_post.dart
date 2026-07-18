import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wajed/core/utils/assets.dart';

class PopupMenuButtonInMyPosts extends StatelessWidget {
  const PopupMenuButtonInMyPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      icon: const Icon(Icons.more_vert),
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem<String>(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(AssetsData.savrPostIcon),
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
                SvgPicture.asset(AssetsData.editPostIcon),
                SizedBox(width: 4),
                Text('Edit Post'),
              ],
            ),
            onTap: () {},
          ),
          PopupMenuItem<String>(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(AssetsData.deleteIcon),
                SizedBox(width: 4),
                Text('Delete'),
              ],
            ),
            onTap: () {},
          ),
        ];
      },
    );
  }
}
