import 'package:flutter/material.dart';
import 'package:wajed/const.dart';
import 'package:wajed/core/utils/text_style.dart';

class ToggleButton extends StatelessWidget {
  ToggleButton({required this.isSelected, required this.onPressed, required this.text, super.key});
  final String text;
  final void Function() onPressed;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:isSelected? kPrimaryColor:ThemeData().scaffoldBackgroundColor,
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: onPressed,
      child: Text(text,maxLines: 1, style: Styles.fontSize14.copyWith(color:isSelected? Colors.white:Colors.black,overflow: TextOverflow.ellipsis,)),
    );
  }
}
