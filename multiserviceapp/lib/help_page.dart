import 'package:flutter/material.dart';
import 'package:multiserviceapp/login.dart';

import 'main.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Help & Support'),
      ),
      body: Column(
        children: [
          Text('Welcome! We are here to help',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Text('Quick Support is available from 9:30Am-7:30PM (Mon to Sat) and 9:30AM-6:30PM(Sun and  National Holidays')
        ],
      )
    );
  }
}

