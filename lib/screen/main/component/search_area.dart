import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/constant/language_constants.dart';
import 'package:e_shoes_app/screen/main/component/categories.dart';
import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:e_shoes_app/utils/mobile_screen_size.dart';
import 'package:flutter/material.dart';

class SearchArea extends StatelessWidget {
  const SearchArea({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
      decoration: BoxDecoration(
        color: Color(hexColor(cFFFFFF)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenWidth <= mobileScreenSize.IPHONE_X.width ? 5 : 10,
          ),
          // Welcome Text
          Text(translation(context).hello,
              style: customTextStyle28(screenWidth, c1D1E20, FontWeight.w700)),
          Text(translation(context).hello_to_user('Laza'),
              style: customTextStyle15(screenWidth, c8F959E)),
          SizedBox(
            height: screenWidth <= mobileScreenSize.IPHONE_X.width ? 5 : 10,
          ),
          // Search button
          Container(
            padding: screenWidth <= mobileScreenSize.IPHONE_X.width
                ? const EdgeInsets.symmetric(horizontal: 15)
                : const EdgeInsets.symmetric(horizontal: 10),
            height: screenWidth <= mobileScreenSize.IPHONE_X.width ?40:50,
            decoration: BoxDecoration(
                color: Color(hexColor(cF5F6FA)),
                borderRadius: BorderRadius.circular(15)),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(0),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(hexColor(c8F959E)),
                    size: 20,
                  ),
                  prefixIconConstraints:
                      screenWidth <= mobileScreenSize.IPHONE_X.width
                          ? const BoxConstraints(maxHeight: 20, minWidth: 25)
                          : const BoxConstraints(maxHeight: 15, minWidth: 20),
                  border: InputBorder.none,
                  hintText: translation(context).app_bar_search),
            ),
          ),
          SizedBox(
             height: screenWidth <= mobileScreenSize.IPHONE_X.width ? 5 : 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(translation(context).choose_brand,
                  style:
                      customTextStyle17(screenWidth, c1D1E20, FontWeight.w700)),
              Text(translation(context).view_all,
                  style: customTextStyle15(screenWidth, c8F959E))
            ],
          ),
          SizedBox(
            height: screenWidth <= mobileScreenSize.IPHONE_X.width ? 5 : 10,
          ),
          /*=======================*
           *    Choose Category 
           *=======================*/
          const Categories(),
          /*=======================*
           *   End Choose Category 
           *=======================*/
          SizedBox(
             height: screenWidth <= mobileScreenSize.IPHONE_X.width ? 5 : 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(translation(context).new_arrival,
                  style:
                      customTextStyle25(screenWidth, c1D1E20, FontWeight.w500)),
              Text(translation(context).view_all,
                  style: customTextStyle15Bold(
                      screenWidth, c8F959E, FontWeight.w300)),
            ],
          ),
        ],
      ),
    );
  }
}
