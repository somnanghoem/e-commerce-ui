import 'package:e_shoes_app/pages/product/product_box.dart';
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

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
             /*  crossAxisSpacing: 10,
              mainAxisSpacing: 10, */
              childAspectRatio: 2/3,
            ),
            shrinkWrap: true,
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            itemCount: products.length,
            itemBuilder: ((context, index) {
              return ProductBox(
                  image: products[index]["image"],
                  description: products[index]["description"],
                  price: products[index]["price"]);
            })));
  }
}
