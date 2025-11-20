import 'package:cosmentics/core/ui/app_image.dart';

import '../../core/logic/helper_methods.dart';
import 'create_password.dart';
import 'widgets/app_pin_fild.dart';
import 'widgets/sucees_dialog.dart';
import '../../core/ui/app_button.dart';
import 'package:flutter/material.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const AppImage(
                image: 'login_logo.png',
                height: 227,
                width: 284,
              ),
              const SizedBox(height: 24),
              const Text(
                textAlign: TextAlign.center,
                'Verify Code',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  text: 'We just sent a 4-digit verification code to \n ',
                  style: TextStyle(
                    color: const Color(0xff434C6D).withValues(alpha: .8),
                  ),
                  children: [
                    const TextSpan(
                      text: '+20 1022658997',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          '. Enter the code in the box  \n  below to continue.',

                      style: TextStyle(
                        color: const Color(0xff434C6D).withValues(alpha: .8),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              TextButton(
                style: TextButton.styleFrom(
                  alignment: AlignmentDirectional.centerStart,
                ),
                onPressed: () {},
                child: const Text(
                  'Edit the number',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                width: 200,
                child: AppPinFild(),
              ),
              const SizedBox(height: 40),
              Text.rich(
                textAlign: TextAlign.start,
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Didn’t receive a code? ',
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,

                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Resend',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60),
              AppButton(
                title: 'Done',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}


