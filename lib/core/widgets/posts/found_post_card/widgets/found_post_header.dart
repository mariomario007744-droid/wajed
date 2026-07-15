import 'package:flutter/material.dart';
import 'package:wajed/core/utils/text_style.dart';

class FoundPostHeader extends StatelessWidget {
  const FoundPostHeader({
    super.key,
    required this.avatar,
    required this.userName,
    required this.timeAgo,
  });

  final String avatar;
  final String userName;
  final String timeAgo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity(vertical: -4),
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 22,
        backgroundImage: AssetImage(avatar),
        backgroundColor: Colors.grey[200],
      ),
      title: Text(userName, style: Styles.fontSize16),
      subtitle: Row(
        children: [
          Icon(Icons.access_time_rounded, size: 14, color: Colors.grey[500]),
          const SizedBox(width: 4),
          Text(
            timeAgo,
            style: Styles.fontSize12.copyWith(color: Colors.grey[600]),
          ),
          const SizedBox(width: 8),
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: Color(0xFF16A34A),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            'Found',
            style: Styles.fontSize12.copyWith(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
