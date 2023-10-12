
import 'package:flutter/material.dart';
import '../models/item.dart';
import '../models/catalog.dart';

class MyProvider extends ChangeNotifier{

  late CatalogModel catalogModel;
  CatalogModel get catalog => catalogModel;
  final List<int> listOfItems = [];
  int counter = 0;
  int count = 0;

  void increment() {
    //if(counter<listOfItems.length) {
      counter++;
    //}
      notifyListeners();
  }

  void countAdd()
  {
    count++;
    notifyListeners();
  }

  // set catlog(CatalogModel catalog){
  //   catalogModel = catalog;
  //   notifyListeners();
  // }

  List get items => listOfItems.map((id)=> catalogModel.getById(id)).toList();


  void add(Item item){
    listOfItems.add(item.id);
    notifyListeners();
  }
}