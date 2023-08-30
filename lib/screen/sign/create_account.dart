import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/screen/sign/sign_up.dart';
import 'package:e_shoes_app/screen/sign/signin.dart';
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
      color: Color(hexColor(ColorConst.CFFFFFF)),
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
                    child: AppButtonBack(
                        image: "assets/images/arrow_left.png",
                        color: ColorConst.CF5F6FA),
                  )),
              /*===================
               * End Back Button
               *===================*/
              Center(
                child: Text('Let’s Get Started',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Color(hexColor(ColorConst.C1D1E20)))),
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
                  textColor: ColorConst.CFFFFFF,
                  backgroupColor: ColorConst.C4267B2,
                  borderColor: ColorConst.C4267B2,
                  text: "Facebook",
                  imageLocation: "assets/images/facebook.png",
                  wSize: 321,
                  htsize: 50),
              const SizedBox(height: 10),
              AppButtonsIcon(
                  textColor: ColorConst.CFFFFFF,
                  backgroupColor: ColorConst.C1DA1F2,
                  borderColor: ColorConst.C1DA1F2,
                  text: "Twitter",
                  imageLocation: "assets/images/twitter.png",
                  wSize: 321,
                  htsize: 50),
              const SizedBox(height: 10),
              AppButtonsIcon(
                  textColor: ColorConst.CFFFFFF,
                  backgroupColor: ColorConst.CEA4335,
                  borderColor: ColorConst.CEA4335,
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
                    "Already have an accoun?",
                    style:
                        TextStyle(color: Color(hexColor(ColorConst.C8F959E))),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInPage()));
                    },
                    child: Text(
                      "Signin",
                      style:
                          TextStyle(color: Color(hexColor(ColorConst.C1D1E20))),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()));
                  },
                  child: AppButtons(
                      textColor: ColorConst.CFEFEFE,
                      backgroupColor: ColorConst.C9775FA,
                      borderColor: ColorConst.C9775FA,
                      text: "Create Account",
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
