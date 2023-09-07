import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/screen/header/app_bar.dart';
import 'package:e_shoes_app/screen/home/home_screen.dart';
import 'package:e_shoes_app/screen/menu/menu_image_bar.dart';
import 'package:e_shoes_app/screen/sidebar/sidbar.dart';
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
  Widget currentScreen = const HomePage();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(hexColor(cFFFFFF)),
      /*=====================*
       *    Sidebar menu
       *=====================*/
      drawer: const SideBar(),
      /*=====================*
       *   End Sidebar menu
       *=====================*/
      appBar: AppBar(
        backgroundColor: Color(hexColor(cFFFFFF)),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 15, 0),
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/images/Cart.png")),
                  color: Color(hexColor(cF5F6FA)),
                  shape: BoxShape.circle),
            ),
          ),
        ],
        leading: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Scaffold.of(context).openDrawer();
                });
              },
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/menu.png")),
                    color: Color(hexColor(cF5F6FA)),
                    shape: BoxShape.circle),
              ),
            ),
          );
        }),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Header and Serchar Bar
          const CustomAppBar(),
          PageStorage(bucket: bucket, child: currentScreen)
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        /*================
         *    Menu Bar
         *================*/
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
