import 'package:flutter/material.dart';

class CartButton extends StatefulWidget {
  const CartButton({
    super.key,
  });

  @override
  State<CartButton> createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: BoxBorder.all(
          color: const Color(0xff8E8EA9),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          IconButton(
            onPressed: () {
              number--;
              setState(() {});
            },
            icon: const Icon(Icons.remove),
          ),
          Text(
            '$number',
          ),
          Flexible(
            child: IconButton(
              onPressed: () {
                number++;
                setState(() {});
              },
              icon: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
