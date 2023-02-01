import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pro_todo_2/homepage.dart';
import 'provider/cart_provider.dart';

class cart_Page extends StatelessWidget {
  const cart_Page({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    bool check=false;
    final pro_vider=Provider.of<Cart>(context);
    final cart=pro_vider.grocery;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(backgroundColor: Colors.black87,
          title: Text("GROCERIES",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
          centerTitle: true,
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,size: 20,))
      ),
        body:
        ListView.builder(
            shrinkWrap: true,
            itemCount: cart.length ,
            itemBuilder: (BuildContext context,int i){
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 80,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${cart[i]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
                        Checkbox(value: pro_vider.Tick(cart[i]), onChanged: (bool? value){
                            pro_vider.IsExistcart(cart[i]);
                          }
                          ),
                      ],
                    ),
                  ),
                ),
              );
            }
        )
    );
  }
}

