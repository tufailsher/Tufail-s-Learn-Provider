import 'package:flutter/material.dart';
import 'Model.dart';
class AddNotifierItem extends ChangeNotifier{

  List<Item> _listItem = [];

  List<Item> get listItem => _listItem;

  // set addItem( String itemName ){
  //   Item item = Item(itemName);
  //   listItem.add(item);
  //   notifyListeners();
  // }

  addItem(String itemName){
    Item item = Item(itemName);
    listItem.add(item);
    notifyListeners();
  }

}
