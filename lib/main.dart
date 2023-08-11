import 'package:e_shoes_app/pages/init/init_sceen01.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
    runApp(const ECommerceApp());  
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    title: 'E Commerce App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData( primarySwatch: Colors.blue),
    home: const InitScreen01(),
   );
  }
}