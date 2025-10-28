import 'package:flutter/material.dart';

import '../../core/logic/helper_methods.dart';
import '../../core/ui/app_image.dart';
import '../auth/login.dart';
import '../on_borading.dart';

class OnBoradingItem extends StatelessWidget {
  const OnBoradingItem({
    super.key,
    required this.onBordingModel,
    required this.currentIndex,
  });
  final OnBordingModel onBordingModel;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppImage(
            image: onBordingModel.image,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            onBordingModel.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: currentIndex == 0 || currentIndex == 2
                  ? const Color(0xff434C6D)
                  : Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            onBordingModel.subTitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: currentIndex == 0 || currentIndex == 2
                  ? const Color(0xff434C6D)
                  : Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          if (currentIndex == 0 || currentIndex == 1)
            FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),

              backgroundColor: const Color(0xff434C6D),
              onPressed: () {},
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            )
          else
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: const Color(0xff434C6D),
              ),
              onPressed: () {
                goTo(const LoginView(), canPop: false);
              },
              child: const Text(
                'let’s start!',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
