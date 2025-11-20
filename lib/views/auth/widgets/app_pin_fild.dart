import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AppPinFild extends StatelessWidget {
  const AppPinFild({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      keyboardType: TextInputType.number,
      appContext: context,
      length: 4,
      enableActiveFill: true,
      textStyle: const TextStyle(color: Colors.black),
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8),
        fieldHeight: 45,
        fieldWidth: 45,
        activeFillColor: Colors.transparent,
        inactiveFillColor: const Color(0xffE6E9EA),
        selectedFillColor: Colors.transparent,
        borderWidth: 0,
        activeColor: Theme.of(context).primaryColor,
        inactiveColor: Colors.transparent,
        selectedColor: Theme.of(context).primaryColor,
      ),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    );
  }
}
