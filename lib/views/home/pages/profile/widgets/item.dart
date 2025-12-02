part of '../view.dart';


class _Itme extends StatelessWidget {
  const _Itme({required this.title, this.page});
  final String title;
  final Widget? page;

  @override
  Widget build(BuildContext context) {
    final image = '${title.toLowerCase().replaceAll(' ', '_')}.svg';
    final isLogout = title.toLowerCase() == 'logout';

    return ListTile(
      onTap: page == null
          ? null
          : () {
              goTo(page!);
            },
      leading: AppImage(image: image),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14.sp,
          color: isLogout ? const Color(0xffCD0F0F) : const Color(0xff434C6D),
        ),
      ),
      trailing: isLogout
          ? null
          : const AppImage(
              image: 'arrow.svg',
            ),
    );
  }
}
