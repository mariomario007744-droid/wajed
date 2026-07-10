import 'package:flutter/material.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/custom_app_bar_auth.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/log_in_view_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});
  static const String routeName = '/log_in_view';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CustomAppBarAuth(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                child: LogInViewBody(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}