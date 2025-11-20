import 'package:flutter/material.dart';

class CheckOutHeader extends StatelessWidget {
  const CheckOutHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey.withValues(alpha: .4),
            radius: 18,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
          ),
          const Spacer(),

          const Text(
            'Checkout',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
