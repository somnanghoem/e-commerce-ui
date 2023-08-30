import 'dart:ui';

import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:flutter/cupertino.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            /* ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(image, fit: BoxFit.cover,),
            ),
             */
            Image.asset(image, fit: BoxFit.cover,),
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: GestureDetector(
                  child:Image.asset('assets/images/Heart.png') ,
                )
            )
            /* Positioned(
                right: 5,
                top: 5,
                child: GestureDetector(
                  child:Image.asset('assets/images/Heart.png') ,
                ),) */
          ],
        ), 
       const SizedBox(height: 10,), 
       Text( description, style: TextStyle(fontSize: 11, color: Color(hexColor('#1D1E20'))),),
       Text( price, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900, color: Color(hexColor('#1D1E20'))),)
      ],
    );
  }
}
