import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
  final String image;
  final String description;
  final String price;
  const ProductBox({
    Key? key,
    required this.image,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(hexColor(cFFFFFF)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
                width: 160,
                height: 203,
              ),

             /*  Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: GestureDetector(
                    child: Image.asset('assets/images/Heart.png'),
                  )) */
            ],
          ),
        /*   const SizedBox(
            height: 10,
          ), */
          Text(
            description,
            style: TextStyle(fontSize: 11, color: Color(hexColor(c1D1E20))),
          ),
          Text(
            price,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w900,
                color: Color(hexColor(c1D1E20))),
          )
        ],
      ),
    );
  }
}
