import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/pages/header/app_bar.dart';
import 'package:e_shoes_app/pages/home/home_screen.dart';
import 'package:e_shoes_app/pages/menu/menu_image_bar.dart';
import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(hexColor(ColorConst.CFFFFFF)),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Header and Serchar Bar
          const CustomAppBar(),
          // Menu Bar
          PageStorage(bucket: bucket, child: currentScreen)
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 79,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Home
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    // init screen
                    _currentTab = 0;
                    currentScreen = const HomePage();
                  });
                },
                child: menuBartImage(
                    _currentTab, 0, 'Home', 'assets/images/Home.png'),
              ),
              // WishList
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    // init screen
                    _currentTab = 1;
                    currentScreen = const HomePage();
                  });
                },
                child: menuBartImage(
                    _currentTab, 1, 'WishList', 'assets/images/Heart.png'),
              ),
              // Bag
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    // init screen
                    _currentTab = 2;
                    currentScreen = const HomePage();
                  });
                },
                child: menuBartImage(
                    _currentTab, 2, 'Bag', 'assets/images/Bag.png'),
              ),
              // Wallet
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    // init screen
                    _currentTab = 3;
                    currentScreen = const HomePage();
                  });
                },
                child: menuBartImage(
                    _currentTab, 3, 'Wallet', 'assets/images/Wallet.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
