// my_plans_page.dart
import 'package:flutter/material.dart';
import 'package:multiserviceapp/home_page.dart';
import 'package:multiserviceapp/login.dart';

class MyPlansPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Row(
          children: [
            // Icon(Icons.arrow_back, size: 30,),
            Text(
              'My Plans',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Container(
        height: 360,
        color: Colors.blue[100],
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Container(
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/images/plan.webp'),
                ),
              ),
            ),
            Text(
              "You don't have any active plans yet!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Purchase a plan to enjoy our services on your devices & appliances.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
                child: Text(
                  'EXPLORE PLANS',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(Size(160, 50)),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
