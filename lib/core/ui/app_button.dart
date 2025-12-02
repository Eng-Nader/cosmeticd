import 'package:cosmentics/core/ui/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.icon,
  });
  final String title;
  final VoidCallback onPressed;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      icon: icon != null ? AppImage(image: icon!) : null,
      onPressed: onPressed,
      label: Text(
        title,
        style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
