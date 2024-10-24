import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Printerservice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Service')),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Background color
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Text color
                    ),
                    child: Text('Extended Warranty'),
                    onPressed: (){

                    },
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Background color
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Text color
                    ),
                    child: Text('Service & Repair'),
                    onPressed: (){

                    },
                  ),
                ],
              ),


              Container(
                height: 345,
                //color: Colors.blue,
                child: Image.asset('assets/images/printerservice.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Icon(Icons.file_copy_rounded),
                    Text('1,846 people have used our services in the last 30 days',style: TextStyle(fontSize: 13),),
                  ],
                ),

              ),

              const Divider(
                color: Colors.grey,
                height: 50,
                thickness: 1,
              ),
              Container(
                height: 380,
                width: double.infinity,
                // color: Colors.grey,
                child: Column(
                  children: [
                    Container(

                      child: Image.asset('assets/images/sad.png'),
                      height: 300,
                      width: 300,
                    ),
                    Text('Sorry We are not able to service your Location at this time',style: TextStyle(fontSize: 20,),textAlign: TextAlign.center,),
                  ],
                ),
              ),

              Container(
                width: double.infinity, // Full width (optional)
                color: Colors.grey, // Background color
                child: SizedBox(
                  height: 27,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Service benefits we offer',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              const Divider(
                color: Colors.grey,
                height: 50,
                thickness: 1,
              ),


              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/engineer.jpg'),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 55),
                          child: Text("Qualified Engineers",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                              height: 50,
                              width: 220,
                              // color: Colors.blue,
                              child: Text("In-house engineers with 10+ years of experience",style: TextStyle(fontSize: 15,),)
                          ),
                        ),


                      ],
                    ),
                  ],
                ),
              ),




              Padding(
                padding: const EdgeInsets.only(left: 55,top: 30),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/repair.png'),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 55),
                          child: Text("High-Quality Repairs",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                              height: 50,
                              width: 220,
                              // color: Colors.blue,
                              child: Text("90-day warranty on spare parts & 30-day warranty on service",style: TextStyle(fontSize: 15,),)
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 55,top: 30),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/expert.png'),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 65),
                          child: Text("Service Expertise",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                              height: 50,
                              width: 220,
                              // color: Colors.blue,
                              child: Text("Trusted by 80 lakh+ Customers",style: TextStyle(fontSize: 15,),)
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  width: double.infinity, // Full width (optional)
                  color: Colors.grey, // Background color
                  child: SizedBox(
                    height: 27,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('How it Work ?',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              const Divider(
                color: Colors.grey,
                height: 50,
                thickness: 1,
              ),




              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/selet.png'),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 80),
                          child: Text("1. Select Service",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                              height: 50,
                              width: 220,
                              // color: Colors.blue,
                              child: Text("In-house engineers with 10+ years of experience",style: TextStyle(fontSize: 15,),)
                          ),
                        ),


                      ],
                    ),
                  ],
                ),
              ),




              Padding(
                padding: const EdgeInsets.only(left: 55,top: 30),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/repair.png'),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 80),
                          child: Text("2. Book Service",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                              height: 50,
                              width: 220,
                              // color: Colors.blue,
                              child: Text("fill in your details & book the service",style: TextStyle(fontSize: 15,),)
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 55,top: 30),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/service.png'),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 80),
                          child: Text("3. Service Visit",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                              height: 50,
                              width: 220,
                              // color: Colors.blue,
                              child: Text("Our qualified engineers will visit your home for service",style: TextStyle(fontSize: 15,),)
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),




            ]
        ),
      ),


    );
  }
}