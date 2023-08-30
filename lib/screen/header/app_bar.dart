import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/screen/header/categories.dart';
import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 10),
      decoration: BoxDecoration(
        color: Color(hexColor(ColorConst.CFFFFFF)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Menu Button
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/menu.png")),
                    color: Color(hexColor(ColorConst.CF5F6FA)),
                    shape: BoxShape.circle),
              ),
              // Card button
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/Cart.png")),
                    color: Color(hexColor(ColorConst.CF5F6FA)),
                    shape: BoxShape.circle),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          // Welcome Text
          Text(
            'Hello',
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Color(hexColor(ColorConst.C1D1E20))),
          ),
          Text(
            'Welcome to Laza.',
            style: TextStyle(fontSize: 15, color: Color(hexColor(ColorConst.C8F959E))),
          ),
          const SizedBox(
            height: 20,
          ),
          // Search button
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: Color(hexColor(ColorConst.CF5F6FA)),
                borderRadius: BorderRadius.circular(15)),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(0),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(hexColor(ColorConst.C8F959E)),
                    size: 20,
                  ),
                  prefixIconConstraints:
                      const BoxConstraints(maxHeight: 20, minWidth: 25),
                  border: InputBorder.none,
                  hintText: 'Search...'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Choose Brand',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                    color: Color(hexColor(ColorConst.C1D1E20))),
              ),
              Text('View All',
                  style: TextStyle(
                      fontSize: 15, color: Color(hexColor(ColorConst.C8F959E))))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Categories(),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'New Arraival',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Color(hexColor(ColorConst.C1D1E20))),
              ),
              Text('View All',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                      color: Color(hexColor(ColorConst.C8F959E)))),
            ],
          ),
        ],
      ),
    );
  }
}
