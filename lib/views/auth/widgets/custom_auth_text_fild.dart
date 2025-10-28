import 'package:flutter/material.dart';

class CustomAuthTextFild extends StatelessWidget {
  const CustomAuthTextFild({
    super.key,
    required this.hintText,
    required this.labelText,
    this.suffixIcon,
    this.obscureText = false,
  });
  final String hintText;
  final String labelText;
  final Widget? suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,

      cursorColor: const Color(0xff434C6D),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This fild is requird';
        }
        return null;
      },
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: suffixIcon,
        ),

        hintText: hintText,
        labelText: labelText,
      ),
    );
  }
}
