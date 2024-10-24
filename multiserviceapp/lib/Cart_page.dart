// my_plans_page.dart
import 'package:flutter/material.dart';
import 'package:multiserviceapp/login.dart';
class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('My Cart'),
      ),
      body:Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            children: [
              Icon(Icons.shopping_cart_outlined,size: 180,),
              Text('Your Cart is Empty',style: TextStyle(fontSize: 25),),

            ],
          ),
        ),
      ),


    );
  }
}
