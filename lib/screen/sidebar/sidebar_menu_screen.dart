import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:e_shoes_app/utils/mobile_screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideBarMenu extends StatelessWidget {
  final String text, icon;
  final VoidCallback? press;
  const SideBarMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: screenWidth <= mobileScreenSize.IPHONE_X.width
          ? const EdgeInsets.symmetric(horizontal: 15, vertical: 10)
          : const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: screenWidth <= mobileScreenSize.IPHONE_X.width
              ? const EdgeInsets.all(15)
              : const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: const Color(0xFFF5F6F9),
        ),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              color: Color(hexColor(c9775FA)),
              width: screenWidth <= mobileScreenSize.IPHONE_X.width ? 18 : 22,
            ),
            SizedBox(
                width:
                    screenWidth <= mobileScreenSize.IPHONE_X.width ? 15 : 20),
            Expanded(
                child:
                    Text(text, style: customTextStyle15(screenWidth, c8F959E))),
            Icon(Icons.arrow_forward_ios, color: Color(hexColor(c9775FA))),
          ],
        ),
      ),
    );
  }
}
