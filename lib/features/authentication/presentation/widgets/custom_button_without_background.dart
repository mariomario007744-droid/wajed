import 'package:flutter/material.dart';
import 'package:wajed/core/utils/text_style.dart';

class CustomButtonWithoutBackground extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  CustomButtonWithoutBackground({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: Styles.fontSize14.copyWith(color: Color(0xFF262626)),
          ),
        ],
      ),
    );
  }
}
