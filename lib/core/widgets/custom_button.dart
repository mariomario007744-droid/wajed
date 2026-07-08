import 'package:flutter/material.dart';
import 'package:wajed/const.dart';
import 'package:wajed/core/utils/text_style.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  CustomButton({required this.text, required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        padding: EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: Styles.fontSize16.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
