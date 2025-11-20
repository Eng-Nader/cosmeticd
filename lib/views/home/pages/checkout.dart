import '../widgets/check_out_header.dart';
import '../widgets/check_out_summary.dart';

import '../../../core/ui/app_button.dart';
import '../widgets/checkout_payment.dart';
import '../widgets/check_out_map.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              const CheckOutHeader(),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 41),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),

                  color: const Color(0x4329d3da).withValues(alpha: .1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      'Delivery to',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 18),
                    const CheckoutMap(),
                    const SizedBox(height: 40),
                    const Text(
                      'Payment Method',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 18),
                    const CheckOutPayment(
                      isCheckd: true,
                    ),
                    const SizedBox(height: 12),
                    const CheckOutPayment(),
                    const SizedBox(height: 31),
                    Text(
                      '_ \t' * 100,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 30),
                    const CheckOutSummary(),
                    const SizedBox(height: 20),
                    const Divider(
                      thickness: 1,
                      color: Color(0xff73B9BB),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'TOTAL + VAT',
                        ),
                        Text(
                          '16.100 EGP',
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    AppButton(title: 'ORDER', onPressed: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
