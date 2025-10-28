import 'dart:async';

import 'package:flutter/material.dart';

final navKey = GlobalKey<NavigatorState>();
void goTo(Widget page, {bool canPop = true, int? delayedSeconds}) {
  void action() {
    Navigator.pushAndRemoveUntil(
      navKey.currentContext!,
      MaterialPageRoute(builder: (context) => page),
      (route) => canPop,
    );
  }

  if (delayedSeconds != null) {
    Timer(Duration(seconds: delayedSeconds), () {
      action();
    });
  } else {
    action();
  }
}
