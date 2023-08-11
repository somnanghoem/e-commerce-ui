import 'package:e_shoes_app/utils/hexcolor.dart';
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
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
      padding: const EdgeInsets.all(10),
      height: 60,
      decoration: BoxDecoration(
          color: Color(hexColor('#F5F6FA')),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color(hexColor('#F5F6FA')), width: 1.1)),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(hexColor('#FEFEFE')),
                image: DecorationImage(image: AssetImage(image))),
          ),
          const SizedBox(width: 10,),
          Text(
            text,
            style: TextStyle( fontSize: 15, fontWeight: FontWeight.w700, color: Color(hexColor('#1D1E20'))),
          )
        ],
      ),
    );
  }
}
