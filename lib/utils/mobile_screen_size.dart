
// ignore_for_file: constant_identifier_names

import 'package:e_shoes_app/utils/hexcolor.dart';
import 'package:flutter/widgets.dart';

enum MobileScreenSize  {

  // IPHONE
  IPHONE_13_PRO   ( pixelWidth: 1170 , pixelHeight: 2532, width: 390, height: 844),
  IPHONE_XR       ( pixelWidth: 828  , pixelHeight: 1792, width: 414, height: 896),
  IPHONE_XS       ( pixelWidth: 1125 , pixelHeight: 2436, width: 375, height: 812), // Smale Device
  IPHONE_XS_MAX   ( pixelWidth: 1242 , pixelHeight: 2688, width: 414, height: 896),
  IPHONE_X        ( pixelWidth: 1125 , pixelHeight: 2436, width: 375, height: 812),
  IPHONE_8_PLUS   ( pixelWidth: 750  , pixelHeight: 1334, width: 375, height: 667),  // Smale Device
  IPHONE_7_PLUS   ( pixelWidth: 1080 , pixelHeight: 1920, width: 414, height: 736),
  IPHONE_7        ( pixelWidth: 750  , pixelHeight: 1334, width: 375, height: 667),  // Smale Device
  IPHONE_6_6S_PLUS( pixelWidth: 1080 , pixelHeight: 1920, width: 414, height: 736),
  IPHONE_6_6S     ( pixelWidth: 750  , pixelHeight: 1334, width: 375, height: 667),  // Smale Device
  IPHONE_5        ( pixelWidth: 640  , pixelHeight: 1136, width: 320, height: 568),  // Smale Device
  IPOD_TOUCH      ( pixelWidth: 640  , pixelHeight: 1136, width: 320, height: 568),  // Smale Device
  IPOD_PRO        ( pixelWidth: 2048 , pixelHeight: 2732, width: 1024, height: 1366),
  IPAD_THIRD      ( pixelWidth: 1536 , pixelHeight: 2048, width: 768, height: 1024),
  IPAD_AIR_1_2    ( pixelWidth: 1536 , pixelHeight: 2048, width: 768, height: 1024),
  IPAD_MINI_1_2   ( pixelWidth: 1536 , pixelHeight: 2048, width: 768, height: 1024),
  IPAD_MINI       ( pixelWidth: 768  , pixelHeight: 1024, width: 768, height: 1024),
  // ANDROID
  NEXUS_6P                      ( pixelWidth: 1440  , pixelHeight: 2560, width: 412, height: 732),
  NEXUS_5X                      ( pixelWidth: 1080  , pixelHeight: 1920, width: 412, height: 732),
  Google_Pixel_7_Pro            ( pixelWidth: 1440  , pixelHeight: 3120, width: 412, height: 771),
  GOOGLE_PIXEL_4_XL             ( pixelWidth: 1440  , pixelHeight: 869, width: 412, height: 869),
  GOOGLE_PIXEL_4                ( pixelWidth: 1080  , pixelHeight: 2280, width: 412, height: 869),
  GOOGLE_PIXEL_3A_XL            ( pixelWidth: 1080  , pixelHeight: 2160, width: 412, height: 824),
  GOOGLE_PIXEL_3A               ( pixelWidth: 1080  , pixelHeight: 2220, width: 412, height: 846),
  GOOGLE_PIXEL_3_XL             ( pixelWidth: 1440  , pixelHeight: 2960, width: 412, height: 847),
  GOOGLE_PIXEL_3                ( pixelWidth: 1080  , pixelHeight: 2160, width: 412, height: 824),
  GOOGLE_PIXEL_2_XL             ( pixelWidth: 1440  , pixelHeight: 2560, width: 412, height: 732),
  GOOGLE_PIXEL_XL               ( pixelWidth: 1440  , pixelHeight: 2560, width: 412, height: 732),
  GOOGLE_PIXEL                  ( pixelWidth: 1080  , pixelHeight: 1920, width: 412, height: 732),
  SAMSUNG_GALAXY_NOTE_10_PLUS   ( pixelWidth: 1440  , pixelHeight: 3040, width: 412, height: 869),
  SAMSUNG_GALAXY_NOTE_10        ( pixelWidth: 1080  , pixelHeight: 2280, width: 412, height: 869),
  SAMSUNG_GALAXY_NOTE_9         ( pixelWidth: 1440  , pixelHeight: 2960, width: 360, height: 740),  // Smale Device
  SAMSUNG_GALAXY_NOTE_5         ( pixelWidth: 1440  , pixelHeight: 2560, width: 480, height: 853),
  LG_G5                         ( pixelWidth: 1440  , pixelHeight: 2560, width: 480, height: 853),
  ONE_PLUS_3                    ( pixelWidth: 1080  , pixelHeight: 1920, width: 480, height: 853), 
  SAMSUNG_GALAXY_S9_PLUS        ( pixelWidth: 1440  , pixelHeight: 2960, width: 360, height: 740),  // Smale Device
  SAMSUNG_GALAXY_S8_PLUS        ( pixelWidth: 1440  , pixelHeight: 2960, width: 360, height: 740),  // Smale Device
  SAMSUNG_GALAXY_7_EDGE         ( pixelWidth: 1440  , pixelHeight: 2960, width: 360, height: 740),  // Smale Device
  SAMSUNG_GALAXY_S7             ( pixelWidth: 1440  , pixelHeight: 2960, width: 360, height: 740),  // Smale Device
  // TABLATE
  TABLET_NEXUS_9                ( pixelWidth: 1536  , pixelHeight: 2048, width: 768, height: 1024),
  TABLET_NEXUS_7                ( pixelWidth: 1200  , pixelHeight: 1920, width: 600, height: 960),
  TABLET_PIXEL_C                ( pixelWidth: 1800  , pixelHeight: 2560, width: 900, height: 1280),
  TABLET_SAMSUNG_GALAXY_TAB_10  ( pixelWidth: 800   , pixelHeight: 1280, width: 900, height: 1280),
  TABLET_CHROMEBOOK_PIXEL       ( pixelWidth: 2560  , pixelHeight: 1700, width: 1280, height: 850);
  const MobileScreenSize({
    required this.pixelWidth,
    required this.pixelHeight,
    required this.width,
    required this.height,
  });

  final double pixelWidth ;
  final double pixelHeight;
  final double width ;
  final double height;

}


// Text Stype
TextStyle customTextStyle15( double screenWidth, String textColor) {
  return TextStyle(
    color: Color(hexColor(textColor)),
    fontSize: screenWidth <= MobileScreenSize.IPHONE_XS.width ? 11 : 15, 
  );
}

TextStyle customTextStyle15Bold( double screenWidth, String textColor, FontWeight fontWeight) {
  return TextStyle(
    color: Color(hexColor(textColor)),
    fontSize: screenWidth <= MobileScreenSize.IPHONE_XS.width ? 11 : 15, 
    fontWeight: FontWeight.w700,
  );
}

TextStyle customTextStyle17( double screenWidth, String textColor, FontWeight fontWeight ) {
  return TextStyle(
    color: Color(hexColor(textColor)),
    fontSize: screenWidth <= MobileScreenSize.IPHONE_XS.width ? 13 : 17, 
    fontWeight: FontWeight.w700,
  );
}

TextStyle customTextStyle28( double screenWidth, String textColor, FontWeight fontWeight ) {
  return TextStyle(
    color: Color(hexColor(textColor)),
    fontSize: screenWidth <= MobileScreenSize.IPHONE_XS.width ? 24 : 28, 
    fontWeight: FontWeight.w700,
  );
}

TextStyle customTextStyle25( double screenWidth, String textColor, FontWeight fontWeight ) {
  return TextStyle(
    color: Color(hexColor(textColor)),
    fontSize: screenWidth <= MobileScreenSize.IPHONE_XS.width ? 21 : 25, 
    fontWeight: FontWeight.w700,
  );
}