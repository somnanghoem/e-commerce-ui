import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/constant/language_constants.dart';
import 'package:e_shoes_app/utils/app_button.dart';
import 'package:e_shoes_app/utils/app_button_icon.dart';
import 'package:e_shoes_app/utils/app_button_back.dart';
import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:flutter/material.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      color: Color(hexColor(cFFFFFF)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*===================
               *    Back Button
               *===================*/
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const AppButtonBack(
                        image: "assets/images/arrow_left.png",
                        color: cF5F6FA),
                  )),
              /*===================
               * End Back Button
               *===================*/
              Center(
                child: Text( translation(context).create_account_let_start,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Color(hexColor(c1D1E20)))),
              )
            ],
          ),
          /*=========================
           *  Create Account Form
           *=========================*/
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppButtonsIcon(
                  textColor: cFFFFFF,
                  backgroupColor: c4267B2,
                  borderColor: c4267B2,
                  text: "Facebook",
                  imageLocation: "assets/images/facebook.png",
                  wSize: 321,
                  htsize: 50),
              const SizedBox(height: 10),
              AppButtonsIcon(
                  textColor: cFFFFFF,
                  backgroupColor: c1DA1F2,
                  borderColor: c1DA1F2,
                  text: "Twitter",
                  imageLocation: "assets/images/twitter.png",
                  wSize: 321,
                  htsize: 50),
              const SizedBox(height: 10),
              AppButtonsIcon(
                  textColor: cFFFFFF,
                  backgroupColor: cEA4335,
                  borderColor: cEA4335,
                  text: "Google",
                  imageLocation: "assets/images/google.png",
                  wSize: 321,
                  htsize: 50),
            ],
          ),
          /*=========================
           *  Create Account Form 
           *=========================*/
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    translation(context).create_account_have_account,
                    style:
                        TextStyle(color: Color(hexColor(c8F959E))),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signin');
                    },
                    child: Text(
                     translation(context).create_account_signin,
                      style:
                          TextStyle(color: Color(hexColor(c1D1E20))),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              /*======================
               *      SignUn Button
               *======================*/
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: AppButtons(
                      textColor: cFEFEFE,
                      backgroupColor: c9775FA,
                      borderColor: c9775FA,
                      text: translation(context).create_account,
                      wSize: double.infinity,
                      htsize: 72)),
              /*======================
               *  End SignUp Button
               *======================*/
            ],
          )
        ],
      ),
    ));
  }
}
