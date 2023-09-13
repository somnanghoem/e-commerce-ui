import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/utils/mobile_screen_size.dart';
import 'package:flutter/cupertino.dart';

class MenuBarImage extends StatelessWidget {
  final int currentTab;
  final int index;
  final String name;
  final String image;

  const MenuBarImage({
    Key? key,
    required this.currentTab,
    required this.index,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
        padding: screenWidth <= mobileScreenSize.IPHONE_XS.width
            ? const EdgeInsets.fromLTRB(0, 0, 0, 0)
            : const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: currentTab == index
            ? Text(
                name,
                style: customTextStyle15(screenWidth, c9775FA),
              )
            : Image(
                image: AssetImage(image),
              ));
  }
}
