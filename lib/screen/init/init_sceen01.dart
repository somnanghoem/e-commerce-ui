import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/responsesive/responsive.dart';
import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:flutter/material.dart';

class InitScreen01 extends StatefulWidget {
  const InitScreen01({super.key});

  @override
  State<InitScreen01> createState() => _InitScreen01State();
}

class _InitScreen01State extends State<InitScreen01> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: Container(
          color: Color(hexColor(c9775FA)),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/init02');
            },
            child: Image.asset('assets/images/logo.png'),
          ),
        ),
        tablet: Container(
          color: Colors.red,
        ),
        desktop: Container(
          color: Colors.black12,
        ));
  }
}
