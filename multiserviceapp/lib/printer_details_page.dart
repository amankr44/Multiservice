import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:multiserviceapp/printer_service_page.dart';

class Printer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Printer & Scanner')),
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
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Printerservice()));
                  },
                )

              ],
            ),


            Container(
              height: 345,
              //color: Colors.blue,
              child: Image.asset('assets/images/printerpage.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Icon(Icons.file_copy_rounded),
                  Text('1,846 people have used our services in the last 30 days'),
                ],
              ),

            ),
            const Divider(
              color: Colors.grey,
              height: 50,
              thickness: 1,
            ),

            Text('Enter device price',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 320,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Eg: 25000',
                    labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2,color: Colors.blue),
                    ),
                    prefixIcon: Icon(Icons.search,size: 30,),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Text('Enter device price to proceed further',style: TextStyle(color: Colors.orange),),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 180,top: 20),
              child: Text('Extended Warranty',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),

            Row(
              children: [
                Container(
                  height: 110,
                  width: 250,
                  // color: Colors.red,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 20),
                        child: Column(
                          children: [
                            Text('.Extends your manufacturers warranty of your televisin',style: TextStyle(fontSize: 15),),
                            Text('.Covers malfunction & Breakdowns',style: TextStyle(fontSize: 15),)
                          ],
                        ),

                      )
                    ],
                  ),
                ),
                Container(
                  height: 110,
                  child: Column(
                    children: [
                      Text('Starts at',style: TextStyle(fontSize: 18),),
                      Row(
                        children: [
                          Icon(Icons.currency_rupee),
                          Text('599',style: TextStyle(fontSize: 20),),

                        ],
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Background color
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Text color
                        ),
                        child: Text('BUY NOW'),
                        onPressed: (){

                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const Divider(
              color: Colors.grey,
              height: 50,
              thickness: 2,
            ),

            Center(child: Text('What people have to say',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            const Divider(
              color: Colors.grey,
              height: 50,
              thickness: 1,
            ),



            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 120,right: 10),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/telepersion.jpg',),
                      ),
                      height: 60,
                      width: 60,
                      //color: Colors.red,
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 1),
                  child: Container(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 145),
                              child: Text('Mani Kandan',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text('Prompt and professional services. Good to see that your engineers are taking safty precaution seriously You deserve a complete 5/5 and i am soon planning to buy your plan for new appliances too.'),
                            )

                          ],
                        ),
                      ],
                    ),
                    height: 180,
                    width: 240,
                    // color: Colors.blue,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 130),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: Container(
                      child: Row(
                        children: [
                          Text('5.0',style: TextStyle(fontSize: 17,color: Colors.orange),),
                          Icon(Icons.star,size: 20,color: Colors.orange,),
                        ],
                      ),
                      height: 60,
                      width: 60,
                      //color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Container(
                width: 290,
                child: const Divider(
                  color: Colors.grey,
                  height: 50,
                  thickness: 1,

                ),
              ),
            ),


            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 120,right: 10),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/telepersion.jpg',),
                      ),
                      height: 60,
                      width: 60,
                      //color: Colors.red,
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 1),
                  child: Container(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 145),
                              child: Text('Mani Kandan',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text('Prompt and professional services. Good to see that your engineers are taking safty precaution seriously You deserve a complete 5/5 and i am soon planning to buy your plan for new appliances too.'),
                            )

                          ],
                        ),
                      ],
                    ),
                    height: 180,
                    width: 240,
                    // color: Colors.blue,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 130),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: Container(
                      child: Row(
                        children: [
                          Text('5.0',style: TextStyle(fontSize: 17,color: Colors.orange),),
                          Icon(Icons.star,size: 20,color: Colors.orange,),
                        ],
                      ),
                      height: 60,
                      width: 60,
                      //color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Container(
                width: 290,
                child: const Divider(
                  color: Colors.grey,
                  height: 50,
                  thickness: 1,

                ),
              ),
            ),




            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 120,right: 10),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/telepersion.jpg',),
                      ),
                      height: 60,
                      width: 60,
                      //color: Colors.red,
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 1),
                  child: Container(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 145),
                              child: Text('Mani Kandan',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text('Prompt and professional services. Good to see that your engineers are taking safty precaution seriously You deserve a complete 5/5 and i am soon planning to buy your plan for new appliances too.'),
                            )

                          ],
                        ),
                      ],
                    ),
                    height: 180,
                    width: 240,
                    // color: Colors.blue,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 130),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: Container(
                      child: Row(
                        children: [
                          Text('5.0',style: TextStyle(fontSize: 17,color: Colors.orange),),
                          Icon(Icons.star,size: 20,color: Colors.orange,),
                        ],
                      ),
                      height: 60,
                      width: 60,
                      //color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Container(
                width: 290,
                child: const Divider(
                  color: Colors.grey,
                  height: 50,
                  thickness: 1,

                ),
              ),
            ),



            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 120,right: 10),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/telepersion.jpg',),
                      ),
                      height: 60,
                      width: 60,
                      //color: Colors.red,
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 1),
                  child: Container(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 145),
                              child: Text('Mani Kandan',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text('Prompt and professional services. Good to see that your engineers are taking safty precaution seriously You deserve a complete 5/5 and i am soon planning to buy your plan for new appliances too.'),
                            )

                          ],
                        ),
                      ],
                    ),
                    height: 180,
                    width: 240,
                    // color: Colors.blue,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 130),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: Container(
                      child: Row(
                        children: [
                          Text('5.0',style: TextStyle(fontSize: 17,color: Colors.orange),),
                          Icon(Icons.star,size: 20,color: Colors.orange,),
                        ],
                      ),
                      height: 60,
                      width: 60,
                      //color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Container(
                width: 290,
                child: const Divider(
                  color: Colors.grey,
                  height: 50,
                  thickness: 1,

                ),
              ),
            ),





          ],
        ),
      ),


    );
  }
}