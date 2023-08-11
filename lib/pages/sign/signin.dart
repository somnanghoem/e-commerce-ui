import 'package:e_shoes_app/pages/forgotpassword/forgot_password.dart';
import 'package:e_shoes_app/pages/home/main_screen.dart';
import 'package:e_shoes_app/utils/app_button.dart';
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
      color: Color(hexColor("#FFFFFF")),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Button
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image:
                                  AssetImage("assets/images/arrow_left.png")),
                          color: Color(hexColor("#F5F6FA")),
                          shape: BoxShape.circle),
                    ),
                  )),
              Center(
                child: Text('Welcome',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Color(hexColor("#1D1E20")))),
              ),
              Center(
                child: Text('Please enter your data to continue',
                    style: TextStyle(
                        fontSize: 15, color: Color(hexColor("#8F959E")))),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(
                        fontSize: 15, color: Color(hexColor("#8F959E"))),
                    suffixIcon: Image.asset('assets/images/check.png'),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          fontSize: 15, color: Color(hexColor("#8F959E"))),
                      suffixIcon: Text(
                        'Strong',
                        style: TextStyle(
                            fontSize: 11, color: Color(hexColor('#34C559'))),
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
                            fontSize: 15, color: Color(hexColor('#EA4335'))),
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
                          fontSize: 15, color: Color(hexColor('#1D1E20'))),
                    ),
                    const SwithToggle(),
                  ],
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'By connecting your account confirm that you agree',
                style:
                    TextStyle(fontSize: 15, color: Color(hexColor('#8F959E'))),
              ),
              Text('with our Term and Condition',
                  style: TextStyle(
                      fontSize: 15, color: Color(hexColor('#8F959E')))),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainScreen()));
                  },
                  child: AppButtons(
                      textColor: "#FEFEFE",
                      backgroupColor: "#9775FA",
                      borderColor: "#9775FA",
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