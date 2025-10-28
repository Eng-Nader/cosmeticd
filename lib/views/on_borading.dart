import 'dart:developer';
import 'widgets/on_borading_item.dart';
import 'package:flutter/material.dart';

class OnBorading extends StatefulWidget {
  const OnBorading({super.key});

  @override
  State<OnBorading> createState() => _OnBoradingState();
}

class _OnBoradingState extends State<OnBorading> {
  final List onBoradingList = [
    OnBordingModel(
      image: 'on_borading_one.png',
      title: 'WELCOME!',
      subTitle:
          'Makeup has the power to transform your \nmood and empowers you to be a more\n confident person.',
    ),
    OnBordingModel(
      image: 'on_borading_two.png',
      title: 'SEARCH & PICK',
      subTitle:
          'We have dedicated set of products and\n  routines hand picked for every skin type.',
    ),
    OnBordingModel(
      title: 'PUCH NOTIFICATIONS ',
      subTitle: 'Allow notifications for new makeup  &\n  cosmetics offers.',
      image: 'on_borading_three.png',
    ),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    log(currentIndex.toString());
    return Scaffold(
      body: PageView.builder(
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },

        itemCount: onBoradingList.length,
        itemBuilder: (context, index) {
          return OnBoradingItem(
            currentIndex: currentIndex,
            onBordingModel: onBoradingList[index],
          );
        },
      ),
    );
  }
}

class OnBordingModel {
  final String image, title, subTitle;
  OnBordingModel({
    required this.image,
    required this.subTitle,
    required this.title,
  });
}
