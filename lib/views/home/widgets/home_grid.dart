import 'package:flutter/material.dart';

import 'home_grid_item.dart';

class HomeGridView extends StatelessWidget {
  const HomeGridView({super.key});
  final  List productList = const
   [
    HomeProductModel(
      'https://img.joomcdn.net/307c7497a72f45db4cd241c998ca272a6efa670e_original.jpeg',
      '\$44.99',
      'Face tint / lip tint',
    ),
    HomeProductModel(
      'https://images.satu.kz/186949256_w200_h200_athe-authentic-lip.jpg',
      '\$44.99',
      'Face tint / lip tint',
    ),
    HomeProductModel(
      'https://img.joomcdn.net/687cd9796995bdd7fe40ed1b0e618c317c4ed3e0_original.jpeg',
      '\$44.99',
      'Athe Red lipstick',
    ),
    HomeProductModel(
      'https://img.joomcdn.net/307c7497a72f45db4cd241c998ca272a6efa670e_original.jpeg',

      '\$44.99',
      'Athe Red lipstick',
    ),
    HomeProductModel(
      'https://img.joomcdn.net/4a52958221ed2fe708ee1b196daf26ade9d73742_original.jpeg',
      '\$44.99',
      'Face tint / lip tint',
    ),
    HomeProductModel(
      'https://img.joomcdn.net/307c7497a72f45db4cd241c998ca272a6efa670e_original.jpeg',
      '\$44.99',
      'Athe Red lipstick',
    ),
    HomeProductModel(
      'https://img.joomcdn.net/307c7497a72f45db4cd241c998ca272a6efa670e_original.jpeg',

      '\$44.99',
      'Athe Red lipstick',
    ),
    HomeProductModel(
      'https://images.satu.kz/186949256_w200_h200_athe-authentic-lip.jpg',
      '\$44.99',
      'Face tint / lip tint',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 170 / 230,
      ),
      shrinkWrap: true,

      itemCount: productList.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return HomeGridViewItem(
          homeProductModel: productList[index],
        );
      },
    );
  }
}

class HomeProductModel {
  final String image, title, price;
  const HomeProductModel(this.image, this.price, this.title);
}
