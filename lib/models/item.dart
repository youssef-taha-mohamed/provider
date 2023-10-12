import 'package:flutter/material.dart';

class Item{
  final String name;
  final int id;
  final int count = 1;

  Item(this.id, this.name);


  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;


}