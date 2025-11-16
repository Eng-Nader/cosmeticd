import 'package:cosmentics/core/ui/app_image.dart';
import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  const AppInput({super.key, this.suffixIcon, this.hintText});
  final String? suffixIcon;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon != null
            ? AppImage(
                image: suffixIcon!,
                fit: BoxFit.scaleDown,
              )
            : null,
      ),
    );
  }
}
