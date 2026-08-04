import 'package:flutter/material.dart';
import 'package:wajed/features/my_profile/presentation/views/widgets/change_password_view_body.dart';
import 'package:wajed/features/my_profile/presentation/views/widgets/my_profile_items_app_bar.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});
  static const String routeName = '/change_password_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MyProfileItemsAppBar(title: 'Change Password'),
            ChangePasswordViewBody(),
          ],
        ),
      ),
    );
  }
}

