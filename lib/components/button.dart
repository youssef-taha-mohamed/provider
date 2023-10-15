import 'package:flutter/material.dart';
import 'package:y_task/constant.dart';

class ButtonCreate extends StatelessWidget {
  const ButtonCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height*.1),
          shape:const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )
          ),
          backgroundColor: primaryColor
      ),
      onPressed: () {},
      child:const Text(
        "Click Me",
        style: TextStyle(fontSize: 22, color: Colors.white,fontWeight: FontWeight.bold),
      ),
    );
  }
}
