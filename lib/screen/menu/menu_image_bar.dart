import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:flutter/cupertino.dart';

Container menuBartImage(int currentTab, int index, String name, String image) {
  return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: currentTab == index
          ? Text(
              name,
              style: TextStyle(
                  color: Color(hexColor(ColorConst.C9775FA)), fontSize: 15),
            )
          : Image(
              image: AssetImage(image),
            ));
}
