import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wajed/core/utils/assets.dart';
import 'package:wajed/core/widgets/logo.dart';

class CustomAppBarAuth extends StatelessWidget {
  const CustomAppBarAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
        Spacer(flex: 1),
        SizedBox(
          height: 60,
          child: Logo(logo: AssetsData.greenLogo)),
      ],
    );
  }
}
