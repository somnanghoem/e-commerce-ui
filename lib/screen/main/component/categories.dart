import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:e_shoes_app/utils/mobile_screen_size.dart';
import 'package:flutter/cupertino.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"image": "assets/images/Adidas.png", "text": "Adidas"},
      {"image": "assets/images/Vector.png", "text": "Nike"},
      {"image": "assets/images/fila-9 1.png", "text": "Fila"},
      {"image": "assets/images/Vector.png", "text": "Vans"},
      {"image": "assets/images/Vector.png", "text": "Nike"},
      {"image": "assets/images/fila-9 1.png", "text": "Fila"},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
              categories.length,
              (index) => CategoriesCard(
                  image: categories[index]["image"],
                  text: categories[index]["text"]))
        ],
      ),
    );
  }
}

class CategoriesCard extends StatelessWidget {
  final String image;
  final String text;
  const CategoriesCard({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: screenWidth <= mobileScreenSize.IPHONE_X.width
          ? const EdgeInsets.fromLTRB(0, 0, 10, 0)
          : const EdgeInsets.fromLTRB(0, 0, 10, 0),
      padding: screenWidth <= mobileScreenSize.IPHONE_X.width
          ? const EdgeInsets.all(10)
          : const EdgeInsets.all(10),
      height: screenWidth <= mobileScreenSize.IPHONE_X.width ? 40 : 60,
      decoration: BoxDecoration(
          color: Color(hexColor(cF5F6FA)),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color(hexColor(cF5F6FA)), width: 1.1)),
      child: Row(
        children: [
          Container(
            padding: screenWidth <= mobileScreenSize.IPHONE_X.width
                ? const EdgeInsets.fromLTRB(15, 0, 15, 0)
                : const EdgeInsets.fromLTRB(10, 0, 10, 0),
            width: screenWidth <= mobileScreenSize.IPHONE_X.width ? 30 : 50,
            height: screenWidth <= mobileScreenSize.IPHONE_X.width ? 30 : 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(hexColor(cFEFEFE)),
                image: DecorationImage(image: AssetImage(image))),
          ),
          SizedBox(
            width: screenWidth <= mobileScreenSize.IPHONE_X.width ? 10 : 5,
          ),
          Text(text,
              style:
                  customTextStyle15Bold(screenWidth, c1D1E20, FontWeight.w700))
        ],
      ),
    );
  }
}
