import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wajed/core/utils/text_style.dart';
import 'package:wajed/features/authentication/presentation/views/get_started_view.dart';

class SkipButtonOnboarding extends StatelessWidget {
  const SkipButtonOnboarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        child: Text(
          'SKIP',
          style: Styles.fontSize16,
          textAlign: TextAlign.right,
        ),
        onTap: () => navigationLogic(context),
      ),
    );
  }

      void navigationLogic(BuildContext context) {
    context.go(GetStartedView.routeName);
  }
}