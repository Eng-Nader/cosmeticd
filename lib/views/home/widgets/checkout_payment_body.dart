import '../../../core/ui/app_image.dart';
import 'package:flutter/material.dart';

class CheckOutPayment extends StatelessWidget {
  const CheckOutPayment({
    super.key,
    this.isCheckd = false,
  });
  final bool isCheckd;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 57,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: const Color(0xff73B9BB),
          width: 1.5,
        ),
      ),
      child: Row(
        children: [
          AppImage(
            image: isCheckd ? 'paymnet.svg' : 'discount.svg',
            color: null,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            isCheckd ? '**** **** **** 0256 ' : 'Add vaucher',
          ),
          const Spacer(),
          if (isCheckd)
            Transform.rotate(
              angle: -1.5708,

              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xffDA498C),
                ),
              ),
            )
          else
            Container(
              alignment: Alignment.center,
              height: 30,
              width: 77,
              decoration: BoxDecoration(
                color: const Color(0xffDA498C),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Text(
                'Apply',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
