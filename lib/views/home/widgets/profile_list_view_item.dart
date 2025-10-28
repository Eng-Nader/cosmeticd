import '../../../core/ui/app_image.dart';
import '../pages/profile.dart';
import 'package:flutter/material.dart';

class ProfileListViewItem extends StatelessWidget {
  const ProfileListViewItem({
    super.key,
    required this.profileModel,
    required this.index,
  });
  final ProfileModel profileModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AppImage(
        image: profileModel.image,
      ),
      title: Text(
        profileModel.titiel,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: index == 5 ? const Color(0xffCD0F0F) : const Color(0xff434C6D),
        ),
      ),
      trailing: const AppImage(image: 'arrow.svg'),
    );
  }
}
