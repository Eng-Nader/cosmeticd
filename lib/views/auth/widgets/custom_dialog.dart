import '../../../core/ui/app_button.dart';
import '../../../core/ui/app_image.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key, required this.titel, required this.subTitle});
  final String titel, subTitle;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetAnimationCurve: Curves.easeInOut,
      insetAnimationDuration: const Duration(seconds: 3),
      backgroundColor: const Color(0xffD9D9D9),

      child: AspectRatio(
        aspectRatio: 360 / 343,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: const Color(0xffD9D9D9),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              const AppImage(image: 'dialog_check.png'),
              const SizedBox(height: 20),
              Text(
                titel,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                textAlign: TextAlign.center,
                subTitle,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: const Color(0xff434C6D).withValues(alpha: .8),
                ),
              ),
              const SizedBox(height: 10),
              Flexible(
                child: AppButton(title: 'Go to Home', onPressed: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
