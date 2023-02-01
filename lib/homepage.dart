import 'package:flutter/material.dart';
import 'package:pro_todo_2/cart_page.dart';
import 'package:pro_todo_2/provider/cart_provider.dart';
import 'package:provider/provider.dart';
import 'provider/cart_provider.dart';

class Groceries extends StatelessWidget {
  const Groceries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List items=["RICE","CHILLIES POWDER","GROUND NUT","PEPPER","CASHEW","TURMERIC","WHEAT","COCONUT OIL"];

    bool check=false;

    final pro_vider=Provider.of<Cart>(context);

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(backgroundColor: Colors.black87,
        title: Text("GROCERIES",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("ITEMS (16)",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,),
            ),
             ListView.builder(
               shrinkWrap: true,
                 itemCount: items.length ,
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
                              Text("${items[i]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
                              Checkbox(
                                  value: pro_vider.Tick(items[i]),
                                  onChanged: (bool? value){
                                    pro_vider.IsExistcart(items[i]);



                              },
                              ),
                            ],
                          ),
                        ),
                     ),
                   );
                 }
             ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>cart_Page())
        );
      },
          label: Text("Add to cart",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),)
      ),

    );
  }
}
