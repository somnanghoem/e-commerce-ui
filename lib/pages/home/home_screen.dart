import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        color: Color(hexColor('#FFFFFF')),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Arraival',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Color(hexColor('#1D1E20'))),
                ),
                Text('View All',  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                      color: Color(hexColor('#8F959E'))))
              ],
            )
          ],
        ),
      ),
    );
  }


}
