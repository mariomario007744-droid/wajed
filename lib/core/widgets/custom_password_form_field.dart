import 'package:flutter/material.dart';
import 'package:wajed/const.dart';

class CustomPasswordFormField extends StatefulWidget {
  const CustomPasswordFormField({
    super.key,
    required this.icon,
    required this.hintText,
  });
  final Icon icon;
  final String hintText;

  @override
  State<CustomPasswordFormField> createState() =>
      _CustomPasswordFormFieldState();
}

class _CustomPasswordFormFieldState extends State<CustomPasswordFormField> {
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _isObscured,
      decoration: InputDecoration(
        prefixIcon: Icon(widget.icon.icon, color: kGreyColor, size: 24),
        suffixIcon: IconButton(
          onPressed: () {
            _isObscured = !_isObscured;
            setState(() {
              
            });
          },
          icon: Icon(_isObscured? Icons.visibility_off:Icons.visibility),
        ),
        hint: Text(widget.hintText),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
      ),
    );
  }
}
