import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:y_task/constant.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Drawer(
      width: MediaQuery.of(context).size.width * .5,
      backgroundColor: Colors.white30,
      child: Column(
        children: [
          ListTile(
            onTap: () {
              context.pushReplacement(home);
            },
            leading: Icon(
              Icons.home,
              color: primaryColor,
              size: 40,
            ),
            title: const Text(
              "Home",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          ListTile(
            onTap: () {
              context.pushReplacement(favorites);
            },
            leading: Icon(
              Icons.favorite,
              color: primaryColor,
              size: 40,
            ),
            title: const Text(
              "Favorites",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    ));
  }
}
