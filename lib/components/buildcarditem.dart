import 'package:flutter/material.dart';
import 'package:y_task/constant.dart';

class BuildCard extends StatelessWidget {
  const BuildCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        shadowColor: Colors.grey.withOpacity(.5),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        margin: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.person_sharp,
                  size: 80,
                  color: primaryColor,
                ),
                Text(
                  "2210",
                  style: TextStyle(fontSize: 22, color: primaryColor),
                ),
              ],
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width*.5, MediaQuery.of(context).size.height*.2),
                  shape:const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    )
                  ),
                    backgroundColor: primaryColor
                ),
                onPressed: () {},
                child:const Text(
                  "Student",
                  style: TextStyle(fontSize: 22, color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ));
     
  }
}