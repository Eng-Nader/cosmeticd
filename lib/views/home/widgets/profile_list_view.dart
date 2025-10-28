import '../pages/profile.dart';
import 'profile_list_view_item.dart';
import 'package:flutter/material.dart';

class ProfileListView extends StatelessWidget {
  const ProfileListView({super.key});
  final list = const [
    ProfileModel(
      'edit.svg',
      'Edit Info',
    ),
    ProfileModel(
      'checkOut.svg',
      'Order History',
    ),
    ProfileModel(
      'wallet.svg',
      'wallet',
    ),
    ProfileModel(
      'setting.svg',
      'setting',
    ),
    ProfileModel(
      'vouceer.svg',
      'vouceer',
    ),
    ProfileModel(
      'logout.svg',
      'logOUt',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ProfileListViewItem(
          profileModel: list[index],
          index: index,
        );
      },
    );
  }
}
