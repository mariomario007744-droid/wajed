import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wajed/core/utils/text_style.dart';
import 'package:wajed/features/authentication/presentation/views/get_started_view.dart';

class MyProfileAppBar extends StatelessWidget {
  const MyProfileAppBar({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: Styles.fontSize24),
        Spacer(),
        IconButton(
          onPressed: () {
            showDialogSignOut(context);
          },
          icon: const Icon(Icons.logout, color: Colors.red),
        ),
      ],
    );
  }

  showDialogSignOut(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text(
          'Sign Out',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        content: const Text(
          'Are you sure you want to sign out?',
          style: TextStyle(fontSize: 14),
        ),
        actionsPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel', style: TextStyle(color: Colors.grey)),
          ),
          TextButton(
            onPressed: () {
              context.go(GetStartedView.routeName);
            },
            child: const Text(
              'Sign Out',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
