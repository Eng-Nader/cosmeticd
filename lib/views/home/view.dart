import '../../core/ui/app_image.dart';
import 'pages/card.dart';
import 'pages/catogry.dart';
import 'pages/profile.dart';
import 'pages/home.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  final homeList = [
    HomeModel('home.svg', const HomePage()),
    HomeModel('categories.svg', const CatogryPage()),
    HomeModel('cart.svg', const CardPage()),
    HomeModel('profile.svg', const ProfilePage()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homeList[currentIndex].widget,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        margin: const EdgeInsets.symmetric(horizontal: 13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: BottomNavigationBar(
            onTap: (value) {
              currentIndex = value;
              setState(() {});
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            backgroundColor: const Color(0xffD9D9D9),
            type: BottomNavigationBarType.fixed,

            items: List.generate(
              4,
              (index) {
                return BottomNavigationBarItem(
                  icon: AppImage(
                    image: homeList[index].image,
                    color: currentIndex == index
                        ? const Color(0xffD75D72)
                        : Colors.grey,
                  ),
                  label: '',
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class HomeModel {
  final String image;
  final Widget widget;
  HomeModel(this.image, this.widget);
}
