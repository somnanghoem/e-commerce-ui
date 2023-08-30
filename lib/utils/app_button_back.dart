import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:flutter/cupertino.dart';

class AppButtonBack extends StatelessWidget {
  final String image;
  final String color;

  const AppButtonBack({Key? key, required this.image, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image)),
          color: Color(hexColor(color)),
          shape: BoxShape.circle),
    );
  }
}
