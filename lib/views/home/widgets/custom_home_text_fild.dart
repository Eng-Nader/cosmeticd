import '../../../core/ui/app_image.dart';
import 'package:flutter/material.dart';

class CustomHomeTextFild extends StatelessWidget {
  const CustomHomeTextFild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0xffB3B3C1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0xffB3B3C1),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0xffB3B3C1),
          ),
        ),
        hintText: 'search',
        hintStyle: const TextStyle(
          color: Color(0xff8E8EA9),
        ),
        suffixIcon: const Padding(
          padding: EdgeInsets.only(right: 16),
          child: AppImage(
            image: 'search.svg',
          ),
        ),
        suffixIconConstraints: const BoxConstraints(
          minHeight: 16,
          minWidth: 16,
        ),
        suffixIconColor: const Color(
          0xff8E8EA9,
        ),
      ),
    );
  }
}
