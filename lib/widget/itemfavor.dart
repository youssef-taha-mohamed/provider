import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/myprovider.dart';

class CartList extends StatelessWidget {
  CartList({super.key});

  @override
  Widget build(BuildContext context) {
    var item = context.watch<MyProvider>();
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "You Have ${item.count} Favorites",
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: item.items.length,
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.favorite),
              title: Text(
                item.items[index].name,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
