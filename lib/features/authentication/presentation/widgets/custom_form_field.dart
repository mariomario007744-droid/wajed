import 'package:flutter/material.dart';
import 'package:wajed/const.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({super.key,required this.icon});
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return FormField(
      builder: (context) {
        return TextFormField(
          decoration: InputDecoration(
            hint: Row(
              children: [
                Icon(icon.icon, color: kGreyColor, size: 24),
                SizedBox(width: 8),
                Text('Enter your username'),
              ],
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
        );
      },
    );
  }
}