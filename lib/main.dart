import 'package:e_shoes_app/constant/language_constants.dart';
import 'package:e_shoes_app/screen/forgotpassword/change_password.dart';
import 'package:e_shoes_app/screen/forgotpassword/forgot_password.dart';
import 'package:e_shoes_app/screen/forgotpassword/verify_code.dart';
import 'package:e_shoes_app/screen/init/init_sceen01.dart';
import 'package:e_shoes_app/screen/init/init_screen02.dart';
import 'package:e_shoes_app/screen/main/main_screen.dart';
import 'package:e_shoes_app/screen/sidebar/change_language.dart';
import 'package:e_shoes_app/screen/sign/create_account.dart';
import 'package:e_shoes_app/screen/sign/sign_up.dart';
import 'package:e_shoes_app/screen/sign/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main(List<String> args) {
  runApp(const ECommerceApp());
}

class ECommerceApp extends StatefulWidget {
  const ECommerceApp({super.key});

  @override
  State<ECommerceApp> createState() => _ECommerceAppState();

  static void setLocale( BuildContext context, Locale newLocale ) {
    _ECommerceAppState? state = context.findAncestorStateOfType< _ECommerceAppState >();
    state?.setLocale(newLocale);
  }

}

class _ECommerceAppState extends State<ECommerceApp> {

  Locale? _locale;
  setLocale( Locale locale ){
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) => {setLocale(locale)});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E Commerce App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: _locale,
      // Init Routes
      initialRoute: '/',
      routes: {
        '/':(context) => const InitScreen01(),
        '/init02'           :(context) => const InitScreen02(),
        '/create_account'   :(context) => const CreateAccountPage() ,
        '/signin'           :(context) => const SignInPage(),
        '/signup'           :(context) => const SignUpPage(),
        '/forgot_password'  :(context) => const ForgotPasswordPage(),
        '/verifycode'       :(context) => const VerifyCodePage(),
        '/change_password'  :(context) => const ChangePasswordScreen(),
        '/main'             :(context) => const MainScreen(),
        '/change_language'  :(context) => const ChangeLanguageScreen(),
      },
    );
  }
}
