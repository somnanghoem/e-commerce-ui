import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/constant/language_constants.dart';
import 'package:e_shoes_app/utils/app_button.dart';
import 'package:e_shoes_app/utils/app_button_back.dart';
import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:e_shoes_app/utils/switch_toggle.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
              color: Color(hexColor(cFFFFFF)),
              child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*=====================
                 *    Back Button
                 *====================*/
                Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const AppButtonBack(
                            image: "assets/images/arrow_left.png",
                            color: cF5F6FA))),
                /*=====================
                 *   End Back Button
                 *=====================*/
                Center(
                  child: Text(translation(context).signin_wellcome,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Color(hexColor(c1D1E20)))),
                ),
                Center(
                  child: Text(translation(context).signin_wellcome_description,
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(hexColor(c8F959E)))),
                ),
              ],
            ),
            /*=====================
             *   Sign In Form
             *=====================*/
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: translation(context).sign_up_username,
                      labelStyle: TextStyle(
                          fontSize: 15,
                          color: Color(hexColor(c8F959E))),
                      suffixIcon: Image.asset('assets/images/check.png'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: translation(context).sign_up_password,
                        labelStyle: TextStyle(
                            fontSize: 15,
                            color: Color(hexColor(c8F959E))),
                        suffixIcon: Text(
                          'Strong',
                          style: TextStyle(
                              fontSize: 11,
                              color: Color(hexColor(c34C559))),
                        )),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/forgot_password');
                        },
                        child: Text(
                          translation(context).forgot_password,
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(hexColor(cEA4335))),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        translation(context).sign_up_remeber_me,
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(hexColor(c1D1E20))),
                      ),
                      const SwithToggle(),
                    ],
                  )
                ],
              ),
            ),
            /*=====================
             *  End Sign In Form
             *=====================*/
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  translation(context).signin_term1,
                  style: TextStyle(
                      fontSize: 15, color: Color(hexColor(c8F959E))),
                ),
                Text(translation(context).signin_term2,
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(hexColor(c8F959E)))),
                const SizedBox(height: 10),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/main');
                    },
                    child: AppButtons(
                        textColor: cFEFEFE,
                        backgroupColor: c9775FA,
                        borderColor: c9775FA,
                        text: translation(context).login,
                        wSize: double.infinity,
                        htsize: 72)),
              ],
            )
          ],
              ),
            ),
        ));
  }
}
