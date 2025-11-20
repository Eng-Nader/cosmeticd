import '../core/logic/helper_methods.dart';
import '../core/ui/app_image.dart';
import 'on_borading.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    goTo(
      const OnBoradingView(),
      canPop: false,
      delayedSeconds: 3,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppImage(
              image: 'splash_logo_two.png',
            ),

            SizedBox(height: 20),
            AppImage(
              image: 'splash_logo_one.png',
            ),
          ],
        ),
      ),
    );
  }
}
