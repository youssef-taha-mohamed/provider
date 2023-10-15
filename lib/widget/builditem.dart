import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:y_task/components/button.dart';
import '../components/addbutton.dart';
import '../components/listview.dart';
import '../models/catalog.dart';
import '../constant.dart';
import '../models/myprovider.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen(this.index, {super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    var item = context.read<CatalogModel>().getById(index);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Text(
              item.name,
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                backgroundColor: primaryColor,
                height: 2,
              ),
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AddButton(item: item),
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                ),
                onPressed: () {
                  Provider.of<MyProvider>(context, listen: false).increment();
                },
                child: Text(
                  "Next",
                  style: TextStyle(color: primaryColor),
                ))
          ],
        ),
        const Spacer(),
        const BuildList(),
        const Spacer(),
        const ButtonCreate(),
      ],
    );
  }
}
