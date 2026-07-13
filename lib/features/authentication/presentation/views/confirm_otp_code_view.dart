import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wajed/core/widgets/custom_button.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/Custom_otp_widget.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/custom_app_bar_auth.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/subtitle_view.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/title_view.dart';
import 'package:wajed/features/home/presentation/views/home_view.dart';

class ConfirmOTPCodeView extends StatelessWidget {
  const ConfirmOTPCodeView({super.key});
  static const String routeName = '/confirm_otp_code_view';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CustomAppBarAuth(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: ListView(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: TitleView(text: 'Confirm OTP code'),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: SubtitleView(
                        text: 'Confirm the OTP code sent to ',
                      ),
                    ),
                    const SizedBox(height: 16),
                    CustomOTPWidget(),
                    const SizedBox(height: 16),
                    CustomButton(
                      text: 'Confirm',
                      onPressed: () => navigateToHomeView(context: context),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  navigateToHomeView({required BuildContext context}) {
    context.go(HomeView.routeName);
  }
}
