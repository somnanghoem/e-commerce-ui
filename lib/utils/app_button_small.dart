import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class AppButtonsSmall extends StatelessWidget {
  final String textColor;
  final String backgroupColor;
  final String borderColor;
  final String text;
  final String imageLocation;
  bool imageYN;
  double wSize;
  double htsize;
  AppButtonsSmall({
    Key? key,
    required this.textColor,
    required this.backgroupColor,
    required this.borderColor,
    required this.text,
    required this.imageLocation,
    required this.wSize,
    required this.htsize,
    this.imageYN = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: wSize,
      height: htsize,
      // ignore: sort_child_properties_last
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          imageYN == false
              ? Text(
                  text,
                  style: TextStyle(color: Color(hexColor(textColor))),
                )
              : Image.asset(imageLocation),
          Text(
            text,
            style: TextStyle(color: Color(hexColor(textColor))),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Color(hexColor(borderColor)),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color(hexColor(borderColor)), width: 1.1)),
    );
  }
}
