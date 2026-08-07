import 'package:flutter/material.dart';
import 'package:wajed/const.dart';
import 'package:wajed/core/utils/text_style.dart';
import 'package:wajed/core/widgets/arrow_back_icon.dart';
import 'package:wajed/core/widgets/custom_pop_up_menu_button.dart';
import 'package:wajed/features/chat/presentation/views/widgets/custom_popup_menu_items_chatting_view.dart';

class ChattingViewAppBar extends StatelessWidget {
  const ChattingViewAppBar({
    super.key,
    required this.avatarUrl,
    required this.name,
    required this.status,
    this.onMoreTap,
  });

  final String avatarUrl;
  final String name;
  final String status;
  final VoidCallback? onMoreTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Row(
        children: [
          ArrowBackIcon(),
          const SizedBox(width: 4),
          CircleAvatar(radius: 22, backgroundImage: AssetImage(avatarUrl)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Styles.fontSize18,
                ),
                const SizedBox(height: 2),
                Text(
                  status,
                  style: Styles.fontSize12.copyWith(color: kGreyColor),
                ),
              ],
            ),
          ),
          CustomPopupMenuButton(length: CustomPopupMenuItemsChattingview.getItems(context).length, item: CustomPopupMenuItemsChattingview.getItems(context)),
        ],
      ),
    );
  }
}
