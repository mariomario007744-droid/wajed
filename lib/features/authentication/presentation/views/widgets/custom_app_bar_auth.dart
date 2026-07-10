import 'package:flutter/material.dart';
import 'package:wajed/core/utils/assets.dart';
import 'package:wajed/core/widgets/arrow_back_icon.dart';
import 'package:wajed/core/widgets/logo.dart';

class CustomAppBarAuth extends StatelessWidget {
  const CustomAppBarAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ArrowBackIcon(),
        Spacer(flex: 1),
        SizedBox(
          height: 60,
          child: Logo(logo: AssetsData.greenLogo)),
      ],
    );
  }
}
