import '../../../core/logic/helper_methods.dart';
import '../sign_up.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomDontHaveAccout extends StatelessWidget {
  const CustomDontHaveAccout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          const TextSpan(
            text: 'Don’t have an account? ',
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = ()=>   goTo(const SignUpView()), 
            text: 'Register',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
