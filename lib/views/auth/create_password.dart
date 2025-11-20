import 'package:flutter/material.dart';

import '../../core/logic/helper_methods.dart';
import '../../core/ui/app_button.dart';
import 'login.dart';
import 'otp.dart';

class CreatePasswordView extends StatefulWidget {
  const CreatePasswordView({super.key});

  @override
  State<CreatePasswordView> createState() => _CreatePasswordViewState();
}

class _CreatePasswordViewState extends State<CreatePasswordView> {
  bool isSecure = false;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 40),
              Text(
                textAlign: TextAlign.center,
                'The password should have at least \n 6 characters.',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff8E8EA9),
                ),
              ),
              SizedBox(height: 40),

              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
