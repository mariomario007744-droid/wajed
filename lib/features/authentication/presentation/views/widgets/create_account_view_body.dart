import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:wajed/core/widgets/custom_button.dart';
import 'package:wajed/features/authentication/presentation/views/add_location_view.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/custom_field_label_text.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/custom_password_form_field.dart';
import 'package:wajed/core/widgets/custom_text_form_field.dart';
import 'package:wajed/core/widgets/widgets/subtitle_view.dart';
import 'package:wajed/core/widgets/widgets/title_view.dart';

class CreateAccountViewBody extends StatelessWidget {
  CreateAccountViewBody({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: TitleView(text: 'Create your account'),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SubtitleView(
              text: 'Enter information to create your account.',
            ),
          ),
          const SizedBox(height: 16),
          CustomFieldLabelText(text: 'User Name'),
          const SizedBox(height: 8),
          CustomTextFormField(
            icon: Icon(Bootstrap.person),
            hintText: 'Enter your user name',
          ),
          const SizedBox(height: 16),
          CustomFieldLabelText(text: 'Email'),
          const SizedBox(height: 8),
          CustomTextFormField(
            icon: Icon(Bootstrap.envelope_at),
            hintText: 'Enter your email',
          ),
          const SizedBox(height: 16),
          CustomFieldLabelText(text: 'Password'),
          const SizedBox(height: 8),
          CustomPasswordFormField(
            icon: Icon(Icons.lock_open_outlined),
            hintText: 'Enter your password',
          ),
          const SizedBox(height: 16),
          CustomFieldLabelText(text: 'Confirm Password'),
          const SizedBox(height: 8),
          CustomPasswordFormField(
            icon: Icon(Icons.lock_open_outlined),
            hintText: 'Confirm your password',
          ),
          const SizedBox(height: 16),
          CustomButton(
            text: 'Create Account',
            onPressed: () {
              context.push(AddLocationView.routeName);
            },
          ),
        ],
      ),
    );
  }
}
