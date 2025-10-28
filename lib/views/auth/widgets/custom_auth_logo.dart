import '../../../core/ui/app_image.dart';
import 'package:flutter/material.dart';

class CustomAuthLogo extends StatelessWidget {
  const CustomAuthLogo({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const AppImage(
            height: 100,
            image: 'splash_logo_two.png',
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,

              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
