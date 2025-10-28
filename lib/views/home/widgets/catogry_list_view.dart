import '../../../core/ui/app_image.dart';
import 'package:flutter/material.dart';

class CatogryListView extends StatelessWidget {
  const CatogryListView({super.key});
  final list = const [
    CatogryModel(
      'https://d1flfk77wl2xk4.cloudfront.net/Assets/38/067/XXL_p0189906738.jpg',
      'Bundles',
    ),
    CatogryModel(
      'https://d1flfk77wl2xk4.cloudfront.net/Assets/38/067/XXL_p0189906738.jpg',
      'Perfumes',
    ),
    CatogryModel(
      'https://d1flfk77wl2xk4.cloudfront.net/Assets/38/067/XXL_p0189906738.jpg',
      'Makeup',
    ),
    CatogryModel(
      'https://i.pinimg.com/736x/83/fe/6e/83fe6e8e6c1e5e642f1e4fe88847bb6b.jpg',
      'Skin Care',
    ),
    CatogryModel(
      'https://img.joomcdn.net/687cd9796995bdd7fe40ed1b0e618c317c4ed3e0_original.jpeg',
      'Gifts',
    ),

    CatogryModel(
      'https://d1flfk77wl2xk4.cloudfront.net/Assets/38/067/XXL_p0189906738.jpg',
      'Bundles',
    ),
    CatogryModel(
      'https://d1flfk77wl2xk4.cloudfront.net/Assets/38/067/XXL_p0189906738.jpg',
      'Perfumes',
    ),
    CatogryModel(
      'https://d1flfk77wl2xk4.cloudfront.net/Assets/38/067/XXL_p0189906738.jpg',
      'Makeup',
    ),
    CatogryModel(
      'https://i.pinimg.com/736x/83/fe/6e/83fe6e8e6c1e5e642f1e4fe88847bb6b.jpg',
      'Skin Care',
    ),
    CatogryModel(
      'https://img.joomcdn.net/687cd9796995bdd7fe40ed1b0e618c317c4ed3e0_original.jpeg',
      'Gifts',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (context, index) {
        return CatogryListViewItem(
          catogrModel: list[index],
        );
      },
      separatorBuilder: (context, index) => const Divider(
        color: Color(0xffb3b3c1),
        thickness: 1,
      ),
    );
  }
}

class CatogryListViewItem extends StatelessWidget {
  const CatogryListViewItem({super.key, required this.catogrModel});
  final CatogryModel catogrModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AppImage(
          image: catogrModel.image,
        ),
      ),
      title: Text(
        catogrModel.title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: const AppImage(image: 'arrow.svg'),
    );
  }
}

class CatogryModel {
  final String image, title;
  const CatogryModel(this.image, this.title);
}
