import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/constant/language_constants.dart';
import 'package:e_shoes_app/utils/app_button.dart';
import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:e_shoes_app/utils/mobile_screen_size.dart';
import 'package:flutter/material.dart';

class InitScreen02Mobile extends StatefulWidget {
  const InitScreen02Mobile({super.key});

  @override
  State<InitScreen02Mobile> createState() => _InitScreen02MobileState();
}

class _InitScreen02MobileState extends State<InitScreen02Mobile> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        color: Color(hexColor(c9775FA)),
        child: Stack(
          children: [
            Positioned(
              child: Image.asset('assets/images/boymodel.png'),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(hexColor(cFFFFFF)),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 15.0,
                      spreadRadius: 3.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                ),
                alignment: Alignment.bottomCenter,
                width: screenWidth,
                height: 244,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text(translation(context).text01,
                        style: customTextStyle25(
                            screenWidth, c1D1E20, FontWeight.w800)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text(translation(context).text02,
                        style: customTextStyle15Bold(
                            screenWidth, c8F959E, FontWeight.w100)),
                  ),
                  Text(translation(context).text03,
                      style: customTextStyle15Bold(
                          screenWidth, c8F959E, FontWeight.w100)),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AppButtons(
                          textColor: c8F959E,
                          backgroupColor: cF5F6FA,
                          borderColor: cF5F6FA,
                          text: translation(context).men,
                          wSize: screenWidth <= mobileScreenSize.IPHONE_X.width
                              ? 130
                              : 150,
                          htsize: screenWidth <= mobileScreenSize.IPHONE_X.width
                              ? 40
                              : 60),
                      AppButtons(
                          textColor: cFFFFFF,
                          backgroupColor: c9775FA,
                          borderColor: c9775FA,
                          text: translation(context).woman,
                          wSize: screenWidth <= mobileScreenSize.IPHONE_X.width
                              ? 130
                              : 150,
                          htsize: screenWidth <= mobileScreenSize.IPHONE_X.width
                              ? 40
                              : 60)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/create_account');
                    },
                    child: Text(
                      translation(context).skip,
                      style: TextStyle(color: Color(hexColor(c8F959E))),
                    ),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
