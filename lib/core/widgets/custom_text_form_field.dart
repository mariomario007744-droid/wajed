import 'package:flutter/material.dart';
import 'package:wajed/const.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, this.icon,required this.hintText,this.maxLines = 1});
  final Icon? icon;
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      decoration: InputDecoration(
      prefixIcon:icon!=null? Icon(icon!.icon, color: kGreyColor, size: 24)
      :null,
        hint: Text(hintText),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
      ),
    );
  }
}
