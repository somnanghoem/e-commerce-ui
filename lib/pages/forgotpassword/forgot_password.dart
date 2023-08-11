import 'package:e_shoes_app/pages/forgotpassword/verify_code.dart';
import 'package:e_shoes_app/utils/app_button.dart';
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
      color: Color(hexColor("#FFFFFF")),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                child: Text('Forgot Password',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Color(hexColor("#1D1E20")))),
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
                    labelText: 'Email Address',
                    labelStyle: TextStyle(
                        fontSize: 15, color: Color(hexColor("#8F959E"))),
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
                'Please write your email to receive a ',
                style:
                    TextStyle(fontSize: 15, color: Color(hexColor('#8F959E'))),
              ),
              Text('confirmation code to set a new password.',
                  style: TextStyle(
                      fontSize: 15, color: Color(hexColor('#8F959E')))),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VerifyCodePage()));
                  },
                  child: AppButtons(
                      textColor: "#FEFEFE",
                      backgroupColor: "#9775FA",
                      borderColor: "#9775FA",
                      text: "Confirm Email",
                      wSize: double.infinity,
                      htsize: 72)),
            ],
          )
        ],
      ),
    ));
  }
}
