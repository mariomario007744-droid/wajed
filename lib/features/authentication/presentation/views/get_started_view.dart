import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wajed/core/utils/assets.dart';
import 'package:wajed/core/widgets/custom_button.dart';
import 'package:wajed/core/widgets/logo.dart';
import 'package:wajed/features/authentication/presentation/views/create_account_view.dart';
import 'package:wajed/features/authentication/presentation/views/log_in_view.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/custom_button_without_background.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/facebook_auth_button.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/google_auth_button.dart';
import 'package:wajed/core/widgets/widgets/subtitle_view.dart';
import 'package:wajed/core/widgets/widgets/title_view.dart';

class GetStartedView extends StatelessWidget {
  static const String routeName = '/get_started_view';
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Logo(logo: AssetsData.greenLogo),
              Align(
                alignment: Alignment.center,
                child: TitleView(text: 'Welcome to Wajed App'),
              ),
              SizedBox(height: 8),
              SubtitleView(
                text:
                    'Quickly report lost items, share found ones, and reconnect with their owners — safely and easily.',
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomButton(
                      text: 'Create Account',
                      onPressed: () => navigateToCreateAccount(context),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: CustomButtonWithoutBackground(
                      text: 'Log In',
                      onPressed: () => navigateToLogIn(context),
                    ),
                  ),
                ],
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
        ),
      ),
    );
  }

  navigateToCreateAccount(BuildContext context) {
    context.push(CreateAccountView.routeName);
  }

  navigateToLogIn(BuildContext context) {
    context.push(LogInView.routeName);
  }
}
