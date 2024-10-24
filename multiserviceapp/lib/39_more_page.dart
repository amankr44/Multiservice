// my_plans_page.dart
import 'package:flutter/material.dart';
import 'package:multiserviceapp/login.dart';
class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: 320,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search for a device,plan or service',
                      labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),

                      prefixIcon: Icon(Icons.search,size: 30,),
                    ),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [


            Padding(
              padding: const EdgeInsets.only(top: 10,right: 75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/air.png',),
                      backgroundColor: Colors.cyan,
                    ),
                  ),
                  Text('Air Purifier Protection Plan',style: TextStyle(fontSize: 16),)
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 50,
              thickness: 1,
            ),


            Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/audios.webp',),
                      backgroundColor: Colors.cyan,
                    ),
                  ),
                  Text('Audio System Protection plan',style: TextStyle(fontSize: 16),)
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 50,
              thickness: 1,
            ),


            Padding(
              padding: const EdgeInsets.only(right: 90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/chopper.webp',),
                      backgroundColor: Colors.cyan,
                    ),
                  ),
                  Text('Chopper Protection plan',style: TextStyle(fontSize: 16),)
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 50,
              thickness: 1,
            ),

            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/camera.png',),
                      backgroundColor: Colors.cyan,
                    ),
                  ),
                  Text('Digital Camera Protection Plan',style: TextStyle(fontSize: 17),)
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 50,
              thickness: 1,
            ),

            Padding(
              padding: const EdgeInsets.only(right: 110),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/fan.png',),
                      backgroundColor: Colors.cyan,
                    ),
                  ),
                  Text('Fan Protection Plan',style: TextStyle(fontSize: 17),)
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 50,
              thickness: 1,
            ),

            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/fitnesstrack.webp',),
                      backgroundColor: Colors.cyan,
                    ),
                  ),
                  Text('Fitness Tracker Protection Plan',style: TextStyle(fontSize: 17),)
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 50,
              thickness: 1,
            ),

            Padding(
              padding: const EdgeInsets.only(right: 110),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/iron.png',),
                      backgroundColor: Colors.cyan,
                    ),
                  ),
                  Text('Iron Protection Plan',style: TextStyle(fontSize: 17),)
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 50,
              thickness: 1,
            ),


            Padding(
              padding: const EdgeInsets.only(right: 90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/mobile.webp',),
                      backgroundColor: Colors.cyan,
                    ),
                  ),
                  Text('Mobile Protection Plan',style: TextStyle(fontSize: 17),)
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 50,
              thickness: 1,
            ),


            Padding(
              padding: const EdgeInsets.only(right: 95),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/kettle.png',),
                      backgroundColor: Colors.cyan,
                    ),
                  ),
                  Text('Kettle Protection Plan',style: TextStyle(fontSize: 17),)
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 50,
              thickness: 1,
            ),

            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/laptops.png',),
                      backgroundColor: Colors.cyan,
                    ),
                  ),
                  Text('Laptop Protection Plan',style: TextStyle(fontSize: 17),)
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 50,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/tv.webp',),
                      backgroundColor: Colors.cyan,
                    ),
                  ),
                  Text('Television Protection Plan',style: TextStyle(fontSize: 17),)
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 50,
              thickness: 1,
            ),

          ],
        ),
      ),


    );
  }
}
