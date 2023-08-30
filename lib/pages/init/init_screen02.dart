import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/pages/sign/create_account.dart';
import 'package:e_shoes_app/utils/app_button.dart';
import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:flutter/material.dart';

class InitScreen02 extends StatefulWidget {
  const InitScreen02({super.key});

  @override
  State<InitScreen02> createState() => _InitScreen02State();
}

class _InitScreen02State extends State<InitScreen02> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        color: Color(hexColor(ColorConst.C9775FA)),
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
                  color: Color(hexColor(ColorConst.CFFFFFF)),
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
                width: width,
                height: 244,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text('Look Good, Feel Good',
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 25,
                            color: Color(hexColor(ColorConst.C1D1E20)))),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text('Create your individual & unique style and ',
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 15,
                            color: Color(hexColor(ColorConst.C8F959E)))),
                  ),
                  Text('look amazing everyday.',
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 15,
                          color: Color(hexColor(ColorConst.C8F959E)))),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AppButtons(
                          textColor: ColorConst.C8F959E,
                          backgroupColor: ColorConst.CF5F6FA,
                          borderColor: ColorConst.CF5F6FA,
                          text: "Men",
                          wSize: 150,
                          htsize: 60),
                      AppButtons(
                          textColor: ColorConst.CFFFFFF,
                          backgroupColor: ColorConst.C9775FA,
                          borderColor: ColorConst.C9775FA,
                          text: "Woman",
                          wSize: 150,
                          htsize: 60)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateAccountPage()));
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(color: Color(hexColor(ColorConst.C8F959E))),
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
