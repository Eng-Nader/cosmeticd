import '../../../core/ui/app_image.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});
  final _list = const [
    _CatogryModel(
      'https://d1flfk77wl2xk4.cloudfront.net/Assets/38/067/XXL_p0189906738.jpg',
      'Bundles',
    ),
    _CatogryModel(
      'https://d1flfk77wl2xk4.cloudfront.net/Assets/38/067/XXL_p0189906738.jpg',
      'Perfumes',
    ),
    _CatogryModel(
      'https://d1flfk77wl2xk4.cloudfront.net/Assets/38/067/XXL_p0189906738.jpg',
      'Makeup',
    ),
    _CatogryModel(
      'https://i.pinimg.com/736x/83/fe/6e/83fe6e8e6c1e5e642f1e4fe88847bb6b.jpg',
      'Skin Care',
    ),
    _CatogryModel(
      'https://img.joomcdn.net/687cd9796995bdd7fe40ed1b0e618c317c4ed3e0_original.jpeg',
      'Gifts',
    ),

    _CatogryModel(
      'https://d1flfk77wl2xk4.cloudfront.net/Assets/38/067/XXL_p0189906738.jpg',
      'Bundles',
    ),
    _CatogryModel(
      'https://d1flfk77wl2xk4.cloudfront.net/Assets/38/067/XXL_p0189906738.jpg',
      'Perfumes',
    ),
    _CatogryModel(
      'https://d1flfk77wl2xk4.cloudfront.net/Assets/38/067/XXL_p0189906738.jpg',
      'Makeup',
    ),
    _CatogryModel(
      'https://i.pinimg.com/736x/83/fe/6e/83fe6e8e6c1e5e642f1e4fe88847bb6b.jpg',
      'Skin Care',
    ),
    _CatogryModel(
      'https://img.joomcdn.net/687cd9796995bdd7fe40ed1b0e618c317c4ed3e0_original.jpeg',
      'Gifts',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: _list.length,
      itemBuilder: (context, index) {
        return _Item(
          catogrModel: _list[index],
        );
      },
      separatorBuilder: (context, index) => const Divider(
        color: Color(0xffb3b3c1),
        thickness: 1,
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({required this.catogrModel});
  final _CatogryModel catogrModel;
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
      trailing: const AppImage(
        image: 'arrow.svg',
      ),
    );
  }
}

class _CatogryModel {
  final String image, title;
  const _CatogryModel(this.image, this.title);
}
