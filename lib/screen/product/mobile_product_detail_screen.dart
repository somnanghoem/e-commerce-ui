
import 'package:flutter/material.dart';

class MobileProductDetail extends StatefulWidget {
  const MobileProductDetail({super.key});

  @override
  State<MobileProductDetail> createState() => _MobileProductDetailState();
}

class _MobileProductDetailState extends State<MobileProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container( child: const Text('hello'),) ),
    );
  }
}