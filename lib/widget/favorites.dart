import 'package:flutter/material.dart';
import '../constant.dart';
import '../widget/drawer.dart';
import '../widget/itemfavor.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      drawer:const DrawerScreen(),
      appBar: AppBar(
        title:const Text("favorites"),
        backgroundColor: Color(0x3E88A5),
      ),
      body: CartList(),
    );
  }
}
