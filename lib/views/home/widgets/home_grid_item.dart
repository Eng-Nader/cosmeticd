import '../../../core/ui/app_image.dart';
import 'home_grid.dart';
import 'package:flutter/material.dart';

class HomeGridViewItem extends StatelessWidget {
  const HomeGridViewItem({super.key, required this.homeProductModel});
  final HomeProductModel homeProductModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          color: Color(0xffD9D9D9),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: AppImage(
                    image: homeProductModel.image,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 6, top: 6),
                  padding: const EdgeInsets.all(8),
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: const AppImage(
                    image: 'home_card.svg',
                    height: 16,
                    width: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              homeProductModel.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,

                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              homeProductModel.price,
              style: const TextStyle(
                color: Color(0xff70839C),
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
