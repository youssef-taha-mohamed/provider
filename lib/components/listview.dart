import 'package:flutter/material.dart';
import 'package:y_task/components/buildcarditem.dart';

class BuildList extends StatelessWidget {
  const BuildList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemExtent: MediaQuery.of(context).size.width*.5,
        itemBuilder: (ctx, index) => const BuildCard(),
      ),
    );
  }
}
