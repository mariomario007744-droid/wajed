import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wajed/features/authentication/presentation/views/get_started_view.dart';
import 'package:wajed/features/my_profile/presentation/views/change_password_view.dart';
import 'package:wajed/features/my_profile/presentation/views/widgets/my_profile_item.dart';
import 'package:wajed/features/my_profile/presentation/views/widgets/theme_switch.dart';

class MyProfileBody extends StatefulWidget {
  const MyProfileBody({super.key});

  @override
  State<MyProfileBody> createState() => _MyProfileBodyState();
}

class _MyProfileBodyState extends State<MyProfileBody> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyProfileItem(
            iconColor: const Color(0xFF1DB584),
            icon: Icons.person_outline,
            title: 'Edit Profile',
            subtitle: 'Change profile picture, number, E-mail',
            onTap: () {
              // navigate to Edit Profile
            },
          ),
          MyProfileItem(
            iconColor: const Color(0xFF1DB584),
            icon: Icons.lock_outline,
            title: 'Change Password',
            subtitle: 'Update and strengthen account security',
            onTap: () {
              context.push(ChangePasswordView.routeName);
            },
          ),
          MyProfileItem(
            iconColor: const Color(0xFF1DB584),
            icon: Icons.bookmark_border,
            title: 'Saved Posts',
            subtitle: 'Posts added to bookmarks',
            onTap: () {
              // navigate to Saved Posts
            },
          ),
          ThemeSwitch(),
          MyProfileItem(
            icon: Icons.delete_forever_outlined,
            iconBackgroundColor: const Color(0xffFEF7F6),
            iconColor: const Color(0xffFF3B30),
            title: 'Delete Account',
            subtitle: 'delete your account',
            onTap: () {
              showDialogDeleteAccount(context);
            },
          ),
        ],
      ),
    );
  }


    showDialogDeleteAccount(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text(
          'Delete Account',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        content: const Text(
          'Are you sure you want to delete your account?',
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
              'Delete Account',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

