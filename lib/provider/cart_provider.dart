import 'package:flutter/material.dart';
import 'package:pro_todo_2/homepage.dart';
import 'package:provider/provider.dart';
import 'package:pro_todo_2/cart_page.dart';

class Cart extends ChangeNotifier{

  List<String> addcart =[];
  List<String> get grocery => addcart;
 // int count=0;

  void IsExistcart(String items){

    final IsExist = addcart.contains(items);
    if(IsExist){
      addcart.remove(items);
    }else{
      addcart.add(items);
    }
    notifyListeners();
  }

  bool Tick(String items){
    final Tick_IsExist=addcart.contains(items);
    return Tick_IsExist;
  }

  void deleteCart(String items){
    addcart=[];
    notifyListeners();
  }
  /*int increment(String items){
    final item_IsExist=addcart.contains(items);
    count++;
    return count;

  }*/
}