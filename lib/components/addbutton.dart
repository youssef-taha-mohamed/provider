import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constant.dart';
import '../models/myprovider.dart';

import '../models/item.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    var isInCart = context.select<MyProvider, bool>((cart) => cart.items.contains(item));
    return TextButton.icon(
        style: TextButton.styleFrom(
            backgroundColor: Colors.grey.shade200,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ))),
        onPressed:isInCart ? null : () {
          Provider.of<MyProvider>(context,listen: false).add(item);
          Provider.of<MyProvider>(context,listen: false).countAdd();
        },
        icon: isInCart ? Icon(Icons.favorite,color: primaryColor,) : Icon(Icons.favorite_border,color: primaryColor,),
        label: Text(
          "Like",
          style: TextStyle(color: primaryColor),
        ),
    );
  }
}
