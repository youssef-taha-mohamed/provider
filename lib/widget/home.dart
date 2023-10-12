import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widget/builditem.dart';
import '../widget/drawer.dart';

import '../models/myprovider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: const DrawerScreen(),
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text(
          "Home Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: ItemScreen(Provider.of<MyProvider>(context).counter),
    );
  }
}
