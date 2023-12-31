// ignore_for_file: unnecessary_new
import 'dart:async';

import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/constant/language_constants.dart';
import 'package:e_shoes_app/utils/app_button.dart';
import 'package:e_shoes_app/utils/app_button_back.dart';
import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifyCodePage extends StatefulWidget {
  const VerifyCodePage({super.key});

  @override
  State<VerifyCodePage> createState() => _VerifyCodePageState();
}

class _VerifyCodePageState extends State<VerifyCodePage> {
  late Timer _timer;
  int _start = 20;
  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

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
                  child: Text(translation(context).verify_code,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 68,
                        width: 64,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Color(hexColor(cE7E8EA)),
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          decoration:
                              const InputDecoration(border: InputBorder.none),
                          onChanged: ((value) => {
                                if (value.length == 1)
                                  {FocusScope.of(context).nextFocus()}
                              }),
                          style: TextStyle(
                              fontSize: 22,
                              color: Color(hexColor(c1D1E20))),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      Container(
                        height: 68,
                        width: 64,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Color(hexColor(cE7E8EA)),
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          decoration:
                              const InputDecoration(border: InputBorder.none),
                          onChanged: ((value) => {
                                if (value.length == 1)
                                  {FocusScope.of(context).nextFocus()}
                              }),
                          style: TextStyle(
                              fontSize: 22,
                              color: Color(hexColor(c1D1E20))),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      Container(
                        height: 68,
                        width: 64,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Color(hexColor(cE7E8EA)),
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          decoration:
                              const InputDecoration(border: InputBorder.none),
                          onChanged: ((value) => {
                                if (value.length == 1)
                                  {FocusScope.of(context).nextFocus()}
                              }),
                          style: TextStyle(
                              fontSize: 22,
                              color: Color(hexColor(c1D1E20))),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      Container(
                        height: 68,
                        width: 64,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Color(hexColor(cE7E8EA)),
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          decoration:
                              const InputDecoration(border: InputBorder.none),
                          style: TextStyle(
                              fontSize: 22,
                              color: Color(hexColor(c1D1E20))),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '00:$_start',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(hexColor(cEA4335))),
                    ),
                    Text(
                      translation(context).verify_code_resend,
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(hexColor(c8F959E))),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/change_password');
                    },
                    child: AppButtons(
                        textColor: cFEFEFE,
                        backgroupColor: c9775FA,
                        borderColor: c9775FA,
                        text:  translation(context).confirm_code,
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
