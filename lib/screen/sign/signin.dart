import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/screen/forgotpassword/forgot_password.dart';
import 'package:e_shoes_app/screen/main/main_screen.dart';
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
              /*=====================
               *    Back Button
               *====================*/
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: AppButtonBack(
                          image: "assets/images/arrow_left.png",
                          color: ColorConst.CF5F6FA))),
              /*=====================
               *   End Back Button
               *=====================*/
              Center(
                child: Text('Welcome',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Color(hexColor(ColorConst.C1D1E20)))),
              ),
              Center(
                child: Text('Please enter your data to continue',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(hexColor(ColorConst.C8F959E)))),
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
                    labelText: 'Username',
                    labelStyle: TextStyle(
                        fontSize: 15,
                        color: Color(hexColor(ColorConst.C8F959E))),
                    suffixIcon: Image.asset('assets/images/check.png'),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          fontSize: 15,
                          color: Color(hexColor(ColorConst.C8F959E))),
                      suffixIcon: Text(
                        'Strong',
                        style: TextStyle(
                            fontSize: 11,
                            color: Color(hexColor(ColorConst.C34C559))),
                      )),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ForgotPasswordPage()));
                      },
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(hexColor(ColorConst.CEA4335))),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Remember me',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(hexColor(ColorConst.C1D1E20))),
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
                'By connecting your account confirm that you agree',
                style: TextStyle(
                    fontSize: 15, color: Color(hexColor(ColorConst.C8F959E))),
              ),
              Text('with our Term and Condition',
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(hexColor(ColorConst.C8F959E)))),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainScreen()));
                  },
                  child: AppButtons(
                      textColor: ColorConst.CFEFEFE,
                      backgroupColor: ColorConst.C9775FA,
                      borderColor: ColorConst.C9775FA,
                      text: "Login",
                      wSize: double.infinity,
                      htsize: 72)),
            ],
          )
        ],
      ),
    ));
  }
}
