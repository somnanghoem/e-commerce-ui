import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/screen/sidebar/sidebar_menu.dart';
import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);
    return Drawer(
      backgroundColor: Color(hexColor(cFFFFFF)),
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(hexColor(cFFFFFF)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/images/menu_reverse.png")),
                      color: Color(hexColor(cF5F6FA)),
                      shape: BoxShape.circle),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/Profile Image.png"),
                    ),
                    Column(
                      children: [
                        Text(
                          'Somnang',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color(hexColor(c1D1E20))),
                        ),
                        Text(
                          'Verified Profile',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(hexColor(c8F959E))),
                        )
                      ],
                    ),
                    Container(
                      width: 66,
                      height: 32,
                      color: Color(hexColor(cF5F5F5)),
                      child: Center(
                        child: Text('3 Orders',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Color(hexColor(c8F959E)))),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 20,
              ),
              SideBarMenu(
                text: AppLocalizations.of(context)!.my_account,
                icon: "assets/icons/User.svg",
                press: () => {},
              ),
              SideBarMenu(
                text: AppLocalizations.of(context)!.notifications,
                icon: "assets/icons/Bell.svg",
                press: () {},
              ),
              SideBarMenu(
                text: AppLocalizations.of(context)!.settings,
                icon: "assets/icons/Settings.svg",
                press: () {},
              ),
              SideBarMenu(
                text: AppLocalizations.of(context)!.language,
                icon: "assets/icons/language.svg",
                press: () {
                  setState(() {
                    Navigator.pushNamed(context, '/change_language');

                  });
                },
              ),
              SideBarMenu(
                text: AppLocalizations.of(context)!.help_center,
                icon: "assets/icons/Question mark.svg",
                press: () {},
              ),
              SideBarMenu(
                text: AppLocalizations.of(context)!.log_out,
                icon: "assets/icons/Logout.svg",
                press: () {
                  Navigator.pushNamed(context, '/signin');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
