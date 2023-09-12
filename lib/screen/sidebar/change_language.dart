import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/constant/language_constants.dart';
import 'package:e_shoes_app/main.dart';
import 'package:e_shoes_app/utils/app_button.dart';
import 'package:e_shoes_app/utils/app_button_back.dart';
import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChangeLanguageScreen extends StatefulWidget {
  const ChangeLanguageScreen({super.key});

  @override
  State<ChangeLanguageScreen> createState() => _ChangeLanguageScreenState();
}

class _ChangeLanguageScreenState extends State<ChangeLanguageScreen> {
  String language = "English";
  String _currentLang = "";

  @override
  // ignore: must_call_super
  initState() {
    // ignore: avoid_print
    super.initState();
    getCurrentLanguage();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void getCurrentLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _currentLang = prefs.getString("languageCode") ?? "English";
    setState(() {});
  }

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
                        image: "assets/images/arrow_left.png", color: cF5F6FA),
                  )),
              /*===================
               * End Back Button
               *===================*/
              Center(
                child: Text( translation(context).change_language,
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
              GestureDetector(
                onTap: () {
                  setState(() {
                    language = "Khmer";
                    _currentLang = "Khmer";
                  });
                },
                child: Container(
                  width: 200,
                  height: 50,
                  // ignore: sort_child_properties_last
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/cambodia_flag.png"),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        translation(context).khmer,
                        style: TextStyle(color: Color(hexColor(cFFFFFF))),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: _currentLang == "Khmer"
                          ? Color(hexColor(c4267B2))
                          : Color(hexColor(c808080)),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Color(hexColor(c4267B2)), width: 1.1)),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      language = "English";
                      _currentLang = "English";
                    });
                  },
                  child: Container(
                    width: 200,
                    height: 50,
                    // ignore: sort_child_properties_last
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/britain_flag.png"),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          translation(context).english,
                          style: TextStyle(color: Color(hexColor(cFFFFFF))),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: _currentLang == "English"
                            ? Color(hexColor(cEA4335))
                            : Color(hexColor(c808080)),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: Color(hexColor(cEA4335)), width: 1.1)),
                  )),
            ],
          ),
          /*=========================
           *  Create Account Form 
           *=========================*/
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              /*======================
               *      SignUn Button
               *======================*/
              GestureDetector(
                  onTap: () async {
                    Locale locale = await setLocale(language);
                    // ignore: use_build_context_synchronously
                    ECommerceApp.setLocale(context, locale);
                    Navigator.pushNamed(context, '/main');
                  },
                  child: AppButtons(
                      textColor: cFEFEFE,
                      backgroupColor: c9775FA,
                      borderColor: c9775FA,
                      text: translation(context).save,
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
