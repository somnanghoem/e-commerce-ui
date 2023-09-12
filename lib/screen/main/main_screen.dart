import 'package:e_shoes_app/responsesive/responsive.dart';
import 'package:e_shoes_app/screen/main/main_screen_mobile.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
       // Mobile Screen
        mobile: const MainScreenMobile(),
      // Tablet Screen
        tablet: Container(
          color: Colors.red,
        ),
      // Desktop Screen
        desktop: Container(
          color: Colors.blue,
        ));
  }
}
