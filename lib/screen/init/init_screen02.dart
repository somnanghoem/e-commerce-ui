import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/utils/app_button.dart';
import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                width: width,
                height: 244,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text( AppLocalizations.of(context)!.text01,
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 25,
                            color: Color(hexColor(c1D1E20)))),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text( AppLocalizations.of(context)!.text02,
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 15,
                            color: Color(hexColor(c8F959E)))),
                  ),
                  Text( AppLocalizations.of(context)!.text03,
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 15,
                          color: Color(hexColor(c8F959E)))),
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
                          text: AppLocalizations.of(context)!.men,
                          wSize: 150,
                          htsize: 60),
                      AppButtons(
                          textColor: cFFFFFF,
                          backgroupColor: c9775FA,
                          borderColor: c9775FA,
                          text: AppLocalizations.of(context)!.woman,
                          wSize: 150,
                          htsize: 60)
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
                      AppLocalizations.of(context)!.skip,
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
