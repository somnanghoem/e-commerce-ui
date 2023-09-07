import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/utils/app_button.dart';
import 'package:e_shoes_app/utils/app_button_back.dart';
import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
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
                child: Text(AppLocalizations.of(context)!.new_password,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Color(hexColor(c1D1E20)))),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)!.sign_up_password,
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
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)!.confirm_password,
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
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(AppLocalizations.of(context)!.change_password_term,
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(hexColor(c8F959E)))),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/signin');
                  },
                  child: AppButtons(
                      textColor: cFEFEFE,
                      backgroupColor: c9775FA,
                      borderColor: c9775FA,
                      text: AppLocalizations.of(context)!.reset_password,
                      wSize: double.infinity,
                      htsize: 72)),
            ],
          )
        ],
      ),
    ));
  }
}
