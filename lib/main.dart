import 'package:flutter/material.dart';
import 'package:pro_todo_2/homepage.dart';
import 'provider/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:pro_todo_2/cart_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return /*MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Groceries(),
    );*/
   ChangeNotifierProvider(create: (context)=> Cart(),
   child:MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Groceries(),
   ) ,
   );
  }
}
