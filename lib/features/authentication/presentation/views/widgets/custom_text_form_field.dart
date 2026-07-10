import 'package:flutter/material.dart';
import 'package:wajed/const.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.icon,required this.hintText});
  final Icon icon;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon.icon, color: kGreyColor, size: 24),
        hint: Text(hintText),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
      ),
    );
  }
}
