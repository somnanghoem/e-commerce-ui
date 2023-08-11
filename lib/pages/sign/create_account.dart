import 'package:e_shoes_app/pages/sign/sign_up.dart';
import 'package:e_shoes_app/pages/sign/signin.dart';
import 'package:e_shoes_app/utils/app_button.dart';
import 'package:e_shoes_app/utils/app_button_icon.dart';
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
                child: Text('Let’s Get Started',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Color(hexColor("#1D1E20")))),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppButtonsIcon(
                  textColor: "#FFFFFF",
                  backgroupColor: "#4267B2",
                  borderColor: "#4267B2",
                  text: "Facebook",
                  imageLocation: "assets/images/facebook.png",
                  wSize: 321,
                  htsize: 50),
              const SizedBox(height: 10),
              AppButtonsIcon(
                  textColor: "#FFFFFF",
                  backgroupColor: "#1DA1F2",
                  borderColor: "#1DA1F2",
                  text: "Twitter",
                  imageLocation: "assets/images/twitter.png",
                  wSize: 321,
                  htsize: 50),
              const SizedBox(height: 10),
              AppButtonsIcon(
                  textColor: "#FFFFFF",
                  backgroupColor: "#EA4335",
                  borderColor: "#EA4335",
                  text: "Google",
                  imageLocation: "assets/images/google.png",
                  wSize: 321,
                  htsize: 50),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an accoun?",
                    style: TextStyle(color: Color(hexColor("#8F959E"))),
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
                      style: TextStyle(color: Color(hexColor("#1D1E20"))),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()));
                  },
                  child: AppButtons(
                      textColor: "#FEFEFE",
                      backgroupColor: "#9775FA",
                      borderColor: "#9775FA",
                      text: "Create Account",
                      wSize: double.infinity,
                      htsize: 72)),
            ],
          )
        ],
      ),
    ));
  }
}
