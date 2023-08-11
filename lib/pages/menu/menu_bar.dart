

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';

class MenuBarPage extends StatefulWidget {
  const MenuBarPage({super.key});

  @override
  State<MenuBarPage> createState() => _MenuBarPageState();
}

class _MenuBarPageState extends State<MenuBarPage> {
  @override
  Widget build(BuildContext context) {
    return Container( 
      child: Text('Menu Bar'),
    );
  }
}