import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/screen/main/component/search_area.dart';
import 'package:e_shoes_app/utils/mobile_screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> products = [
    {
      "image": "assets/products/Rectangle 568.png",
      "description": "Nike Sportswear Club\nFleece" "Fleece",
      "price": "\$100"
    },
    {
      "image": "assets/products/Rectangle 569.png",
      "description": "Trail Running Jacket Nike\nWindrunner",
      "price": "\$110"
    },
    {
      "image": "assets/products/Rectangle 568.png",
      "description": "Nike Sportswear Club\nFleece",
      "price": "\$120"
    },
    {
      "image": "assets/products/Rectangle 569.png",
      "description": "Trail Running Jacket Nike\nWindrunner",
      "price": "\$130"
    },
    {
      "image": "assets/products/Rectangle 568.png",
      "description": "Nike Sportswear Club\nFleece",
      "price": "\$99"
    },
    {
      "image": "assets/products/Rectangle 569.png",
      "description": "Trail Running Jacket Nike\nWindrunner",
      "price": "\$140"
    },
    {
      "image": "assets/products/Rectangle 568.png",
      "description": "Nike Sportswear Club\nFleece",
      "price": "\$99"
    },
    {
      "image": "assets/products/Rectangle 569.png",
      "description": "Trail Running Jacket Nike\nWindrunner",
      "price": "\$150"
    },
    {
      "image": "assets/products/Rectangle 568.png",
      "description": "Nike Sportswear Club\nFleece",
      "price": "\$99"
    },
    {
      "image": "assets/products/Rectangle 569.png",
      "description": "Trail Running Jacket Nike\nWindrunner",
      "price": "\$160"
    },
  ];

  final double mobileSmallDevice = 2 / 2.7;
  final double mobileMeduimDevice = 2 / 3;
  final double mobileLargemDevice = 2 / 3;
  // Header and Serchar Bar
  // const SearchArea(),
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Flexible(
        child: Column(
      children: [
        /*================*
         *    Search Area
         *================*/
        const SearchArea(),
        /*================*
         * End Search Area
         *================*/
        Flexible(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: screenWidth <= MobileScreenSize.IPHONE_X.width
                    ? mobileSmallDevice
                    : mobileMeduimDevice,
              ),
              shrinkWrap: true,
              //padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
              itemCount: products.length,
              itemBuilder: ((context, index) {
                return Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            products[index]["image"],
                            fit: BoxFit.cover,
                            width:
                                screenWidth <= MobileScreenSize.IPHONE_X.width
                                    ? 140
                                    : 160,
                            height:
                                screenWidth <= MobileScreenSize.IPHONE_X.width
                                    ? 183
                                    : 203,
                          ),
                          Positioned(
                              top: -15,
                              right: 0,
                              child: Image.asset('assets/images/Heart.png'))
                        ],
                      ),
                      Text(products[index]["description"],
                          style: customTextStyle15(screenWidth, c1D1E20)),
                      Text(products[index]["price"],
                          style: customTextStyle17(
                              screenWidth, c1D1E20, FontWeight.w900))
                    ],
                  ),
                );
              })),
        )
      ],
    ));
  }
}
