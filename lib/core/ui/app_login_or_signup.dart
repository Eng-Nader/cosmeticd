import 'package:flutter/material.dart';

class AppLoginOrSignup extends StatelessWidget {
  const AppLoginOrSignup({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });
  final String title, subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          children: [
            TextSpan(
          
              text: title,
            ),
            WidgetSpan(
              alignment: PlaceholderAlignment
                  .middle, // if you want a text button in middle
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity
                      .compact, //   if you want to textbutton small
                ),
                onPressed: onTap,
                child: Text(subTitle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
