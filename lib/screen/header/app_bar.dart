
import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/screen/header/categories.dart';
import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
      decoration: BoxDecoration(
        color: Color(hexColor(cFFFFFF)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          // Welcome Text
          Text(
            AppLocalizations.of(context)!.hello,
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Color(hexColor(c1D1E20))),
          ),
          Text(
            AppLocalizations.of(context)!.hello_to_user('Laza'),
            style: TextStyle(
                fontSize: 15, color: Color(hexColor(c8F959E))),
          ),
          const SizedBox(
            height: 20,
          ),
          // Search button
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
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
                      const BoxConstraints(maxHeight: 20, minWidth: 25),
                  border: InputBorder.none,
                  hintText: AppLocalizations.of(context)!.app_bar_search),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.choose_brand,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                    color: Color(hexColor(c1D1E20))),
              ),
              Text(AppLocalizations.of(context)!.view_all,
                  style: TextStyle(
                      fontSize: 15, color: Color(hexColor(c8F959E))))
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
                AppLocalizations.of(context)!.new_arrival,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Color(hexColor(c1D1E20))),
              ),
              Text(AppLocalizations.of(context)!.view_all,
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                      color: Color(hexColor(c8F959E)))),
            ],
          ),
        ],
      ),
    );
  }
}
