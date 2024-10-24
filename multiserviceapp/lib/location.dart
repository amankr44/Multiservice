// my_plans_page.dart
import 'package:flutter/material.dart';
import 'package:multiserviceapp/login.dart';
class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Row(
          children: [
            Text('SET ADDRESS',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),

          ],




        ),
      ),
      body:Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 320,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Search for area',
                    labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 2,color: Colors.white),
                    ),
                    prefixIcon: Icon(Icons.search,size: 30,),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 75,
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.location_on,size: 30,),
                  Text('Location Permission is off',style: TextStyle(fontSize: 17),),
                  ElevatedButton(
                    child: Text('TURN ON',style: TextStyle(color: Colors.white),),
                    onPressed: (){

                    },
                    style: ButtonStyle(

                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),


    );
  }
}
