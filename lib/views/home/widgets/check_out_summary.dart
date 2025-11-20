import 'package:flutter/material.dart';

class CheckOutSummary extends StatelessWidget {
  const CheckOutSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '- REVIEW PAYMENT',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'PAYMENT SUMMARY',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Subtotal',
            ),
            Text(
              '16.100 EGP',
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'SHIPPING FEES',
            ),
            Text(
              'TO BE CALCULATED',
            ),
          ],
        ),
      ],
    );
  }
}
