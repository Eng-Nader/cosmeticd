import 'package:flutter/material.dart';

class CustomAddRemoveButton extends StatefulWidget {
  const CustomAddRemoveButton({
    super.key,
  });

  @override
  State<CustomAddRemoveButton> createState() => _CustomAddRemoveButtonState();
}

class _CustomAddRemoveButtonState extends State<CustomAddRemoveButton> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 130),
      child: Container(
        height: 40,
        width: 112,
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
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 350),
              transitionBuilder: (child, animation) {
                return ScaleTransition(
                  scale: animation,
                  child: FadeTransition(
                    opacity: animation,
                    child: child,
                  ),
                );
              },
              child: Text(
                key: ValueKey(number),
                '$number',
              ),
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
      ),
    );
  }
}
