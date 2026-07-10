import 'package:flutter/material.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/create_account_view_body.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/custom_app_bar_auth.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});
  static const String routeName = '/create_account_view';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CustomAppBarAuth(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  bottom: 16.0,
                ),
                child: CreateAccountViewBody(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
