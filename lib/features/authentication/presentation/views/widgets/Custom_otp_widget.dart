import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:wajed/core/utils/text_style.dart';

class CustomOTPWidget extends StatelessWidget {
  const CustomOTPWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      defaultPinTheme: PinTheme(
        height: 56,
        width: 56,
        textStyle: Styles.fontSize16,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        )
      ),
      focusedPinTheme: PinTheme(
        height: 56,
        width: 56,
        textStyle: Styles.fontSize16.copyWith(
          color: Color(0xFFD92D20)
        ),
        decoration: BoxDecoration(
          color: Color(0xffFEF7F6),
          border: Border.all(color:const Color(0xFFF7CECA)),
          borderRadius: BorderRadius.circular(8),
        )
      ),
      submittedPinTheme: PinTheme(
        height: 56,
        width: 56,
        textStyle: Styles.fontSize16.copyWith(
                    color: Color(0xFF079455)

        ),
        decoration: BoxDecoration(
          color: Color(0xFFF5FFFA),
          border: Border.all(color:Color(0xFFB3FBDB)),
          borderRadius: BorderRadius.circular(8),
        )
      ),
      length: 6,
      onCompleted: (pin) => {}
  );
  }
}