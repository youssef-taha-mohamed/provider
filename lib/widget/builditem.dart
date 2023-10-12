import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:y_task/components/addbutton.dart';
import 'package:y_task/models/catalog.dart';
import '../constant.dart';
import '../models/myprovider.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen(this.index,{super.key});
  final int index;
  @override
  Widget build(BuildContext context) {
    var item = context.read<CatalogModel>().getById(index);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
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
        )
      ],
    );
  }
}
