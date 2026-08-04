import 'package:flutter/material.dart';
import 'package:wajed/core/widgets/custom_button.dart';
import 'package:wajed/core/widgets/custom_field_label_text.dart';
import 'package:wajed/core/widgets/custom_password_form_field.dart';

class ChangePasswordViewBody extends StatelessWidget {
  const ChangePasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Form(
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    CustomFieldLabelText(text: 'Old Password'),
                    SizedBox(height: 8),
                    CustomPasswordFormField(
                      icon: Icon(Icons.lock_open_outlined),
                      hintText: 'Enter your old password',
                    ),
                    SizedBox(height: 16),
                    CustomFieldLabelText(text: 'New Password'),
                    SizedBox(height: 8),
                    CustomPasswordFormField(
                      icon: Icon(Icons.lock_open_outlined),
                      hintText: 'Enter your new password',
                    ),
                    SizedBox(height: 16),
                    CustomFieldLabelText(text: 'Confirm New Password'),
                    SizedBox(height: 8),
                    CustomPasswordFormField(
                      icon: Icon(Icons.lock_open_outlined),
                      hintText: 'Confirm your new password',
                    ),
                  ],
                ),
              ),
              CustomButton(text: 'Save', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
