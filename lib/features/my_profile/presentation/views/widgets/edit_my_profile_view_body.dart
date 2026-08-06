import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:wajed/core/widgets/custom_button.dart';
import 'package:wajed/core/widgets/custom_field_label_text.dart';
import 'package:wajed/core/widgets/custom_text_form_field.dart';
import 'package:wajed/features/my_profile/presentation/views/widgets/edit_profile_image_picker.dart';

class EditMyProfileViewBody extends StatelessWidget {
  const EditMyProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Center(
                    child: EditProfileImagePicker(
                      image:
                          'assets/images/6140fad6d9bdd7f9a2e23fb608060567b7c77a06.png',
                    ),
                  ),
                  SizedBox(height: 80),
                  CustomFieldLabelText(text: 'User Name'),
                  const SizedBox(height: 8),
                  CustomTextFormField(
                    icon: Icon(Bootstrap.person),
                    hintText: 'Enter your user name',
                  ),
                ],
              ),
            ),
            CustomButton(text: 'Edit', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
