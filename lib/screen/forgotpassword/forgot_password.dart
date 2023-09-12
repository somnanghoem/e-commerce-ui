import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/constant/language_constants.dart';
import 'package:e_shoes_app/utils/app_button.dart';
import 'package:e_shoes_app/utils/app_button_back.dart';
import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
              /*======================*
               *      Back Button 
               *======================*/
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
              /*======================*
               *    End Back Button 
               *======================*/
              Center(
                child: Text(translation(context).forgot_password_01,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Color(hexColor(c1D1E20)))),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/email_forgotpassword.png'),
                const SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: translation(context).sign_up_email,
                    labelStyle: TextStyle(
                        fontSize: 15,
                        color: Color(hexColor(c8F959E))),
                    suffixIcon: Image.asset('assets/images/check.png'),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                translation(context).forgot_password_term1,
                style: TextStyle(
                    fontSize: 15, color: Color(hexColor(c8F959E))),
              ),
              Text(translation(context).forgot_password_term2,
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(hexColor(c8F959E)))),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/verifycode');
                  },
                  child: AppButtons(
                      textColor: cFEFEFE,
                      backgroupColor: c9775FA,
                      borderColor: c9775FA,
                      text: translation(context).confirm_email,
                      wSize: double.infinity,
                      htsize: 72)),
            ],
          )
        ],
      ),
    ));
  }
}
