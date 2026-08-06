import 'package:flutter/material.dart';
import 'package:wajed/features/my_profile/presentation/views/widgets/edit_profile_image_picker.dart';
import 'package:wajed/features/my_profile/presentation/views/widgets/my_profile_items_app_bar.dart';

class EditMyProfileView extends StatelessWidget {
  const EditMyProfileView({super.key});
  static const String routeName = '/edit_my_profile_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MyProfileItemsAppBar(title: 'Edit Profile'),
            EditProfileImagePicker(
              image: 'assets/images/6140fad6d9bdd7f9a2e23fb608060567b7c77a06.png',
            ),
            
          ],
        ),
      ),
    );
  }
}