import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:wajed/core/widgets/custom_button.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/custom_field_label_text.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/custom_password_form_field.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/custom_text_form_field.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/facebook_auth_button.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/google_auth_button.dart';
import 'package:wajed/features/main_layout_navigation/presentation/views/main_layout_view.dart';
import 'package:wajed/features/onboarding/presentation/views/widgets/subtitle_view.dart';
import 'package:wajed/features/onboarding/presentation/views/widgets/title_view.dart';

class LogInViewBody extends StatelessWidget {
  LogInViewBody({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: TitleView(text: 'Log in to your account'),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SubtitleView(
              text: 'Enter information to log in your account.',
            ),
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
          CustomButton(
            text: 'Log In',
            onPressed: () => navigateToHomeView(context: context),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          SubtitleView(text: 'Or Continue with'),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GoogleAuthButton(),
              SizedBox(width: 16),
              FacebookAuthButton(),
            ],
          ),
        ],
      ),
    );
  }

  navigateToHomeView({required BuildContext context}) {
    context.go(MainLayoutView.routeName);
  }
}
