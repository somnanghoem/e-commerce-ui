import 'package:e_shoes_app/constant/color_const.dart';
import 'package:e_shoes_app/screen/bag/bag_screen.dart';
import 'package:e_shoes_app/screen/home/home_screen.dart';
import 'package:e_shoes_app/screen/main/component/menu_image_bar.dart';
import 'package:e_shoes_app/screen/sidebar/sidbar.dart';
import 'package:e_shoes_app/screen/wallet/wallet_screen.dart';
import 'package:e_shoes_app/screen/wishlist/wishlist_screen.dart';
import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:e_shoes_app/utils/mobile_screen_size.dart';
import 'package:flutter/material.dart';

class MainScreenMobile extends StatefulWidget {
  const MainScreenMobile({super.key});

  @override
  State<MainScreenMobile> createState() => _MainScreenMobileState();
}

class _MainScreenMobileState extends State<MainScreenMobile> {
  int _currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double screenWidth = MediaQuery.of(context).size.width;
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
          PageStorage(bucket: bucket, child: currentScreen)
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: screenWidth <= mobileScreenSize.IPHONE_X.width ? 5 : 10,
        /*================
         *    Menu Bar
         *================*/
        child: Container(
          height: screenWidth <= mobileScreenSize.IPHONE_X.width ? 59 : 79,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Home
              MaterialButton(
                  minWidth:
                      screenWidth <= mobileScreenSize.IPHONE_X.width ? 40 : 25,
                  onPressed: () {
                    setState(() {
                      _currentTab = 0;
                      currentScreen = const HomePage();
                    });
                  },
                  child: MenuBarImage(
                      currentTab: _currentTab,
                      index: 0,
                      name: 'Home',
                      image: 'assets/images/Home.png')),
              // WishList
              MaterialButton(
                minWidth:
                    screenWidth <= mobileScreenSize.IPHONE_X.width ? 40 : 25,
                onPressed: () {
                  setState(() {
                    _currentTab = 1;
                    currentScreen = const WishListScreen();
                  });
                },
                child: MenuBarImage(
                    currentTab: _currentTab,
                    index: 1,
                    name: 'WishList',
                    image: 'assets/images/Heart.png'),
                // Bag
              ),
              MaterialButton(
                  minWidth:
                      screenWidth <= mobileScreenSize.IPHONE_X.width ? 40 : 25,
                  onPressed: () {
                    setState(() {
                      _currentTab = 2;
                      currentScreen = const BagScreen();
                    });
                  },
                  child: MenuBarImage(
                      currentTab: _currentTab,
                      index: 2,
                      name: 'Bag',
                      image: 'assets/images/Bag.png')),
              // Wallet
              MaterialButton(
                  minWidth:
                      screenWidth <= mobileScreenSize.IPHONE_X.width ? 40 : 25,
                  onPressed: () {
                    setState(() {
                      _currentTab = 3;
                      currentScreen = const WalletScreen();
                    });
                  },
                  child: MenuBarImage(
                      currentTab: _currentTab,
                      index: 3,
                      name: 'Wallet',
                      image: 'assets/images/Wallet.png')),
            ],
          ),
        ),
      ),
    );
  }
}
