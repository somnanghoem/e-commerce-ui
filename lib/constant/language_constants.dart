import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const String _languagecode = 'languageCode';

//languages code

Future<Locale> setLocale(String languageCode) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(_languagecode, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String languageCode = prefs.getString(_languagecode) ?? "English";
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case "English":
      return const Locale('en');
    case "Khmer":
      return const Locale('km');
    default:
      return const Locale('en');
  }
}

AppLocalizations translation(BuildContext context) {
  return AppLocalizations.of(context)!;
}