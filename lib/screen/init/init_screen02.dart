import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/constant/language_constants.dart';
import 'package:e_shoes_app/responsesive/responsive.dart';
import 'package:e_shoes_app/screen/init/screen02/init_screen02_mobile.dart';
import 'package:flutter/material.dart';

class InitScreen02 extends StatefulWidget {
  const InitScreen02({super.key});

  @override
  State<InitScreen02> createState() => _InitScreen02State();
}

class _InitScreen02State extends State<InitScreen02> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        // Mobile Screen
        mobile: const InitScreen02Mobile(),
        // Tablet Scree
        tablet: Container(
          color: Colors.red,
        ),
        // Destop or web screen
        desktop: Container(
          color: Colors.black12,
        ));
  }
}
