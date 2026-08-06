import 'package:flutter/material.dart';
import 'package:wajed/features/my_profile/presentation/views/widgets/edit_my_profile_view_body.dart';
import 'package:wajed/features/my_profile/presentation/views/widgets/my_profile_items_app_bar.dart';

class EditMyProfileView extends StatelessWidget {
  const EditMyProfileView({super.key});
  static const String routeName = '/edit_my_profile_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyProfileItemsAppBar(title: 'Edit Profile'),
            EditMyProfileViewBody(),
          ],
        ),
      ),
    );
  }
}

