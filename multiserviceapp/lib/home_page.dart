// home_page.dart

import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:multiserviceapp/39_more_page.dart';
import 'package:multiserviceapp/Cart_page.dart';
import 'package:multiserviceapp/Fitness_details_page.dart';
import 'package:multiserviceapp/audio_details_page.dart';
import 'package:multiserviceapp/audio_system_details_page.dart';
import 'package:multiserviceapp/camera_details_page.dart';
import 'package:multiserviceapp/chopper_details_page.dart';
import 'package:multiserviceapp/desktop_details_page.dart';
import 'package:multiserviceapp/digital_camera_details_page.dart';
import 'package:multiserviceapp/electric_cooker_details_page.dart';
import 'package:multiserviceapp/fan_details_page.dart';
import 'package:multiserviceapp/gaming_details_page.dart';
import 'package:multiserviceapp/iron_details_page.dart';
import 'package:multiserviceapp/juicer_mixer_details_page.dart';
import 'package:multiserviceapp/kettle_details_page.dart';
import 'package:multiserviceapp/location.dart';
import 'package:multiserviceapp/microwave_details_page.dart';
import 'package:multiserviceapp/mobile_details_page.dart';
import 'package:multiserviceapp/printer_details_page.dart';
import 'package:multiserviceapp/refrigerator_details_page.dart';
import 'package:multiserviceapp/television_detaills_page.dart';
import 'package:multiserviceapp/washing_details_page.dart';

import 'Desk_details_page.dart';
import 'laptop_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Row(
          children: [
            Icon(Icons.location_on, size: 40, color: Colors.orange),
            SizedBox(width: 8), // Add some space between the icon and the text
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Location()));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PATNA 800020",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "A/66 Housing, Board Colon...",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            Icon(Icons.arrow_drop_down_sharp, size: 50),
            Spacer(), // Push the cart icon to the end
            Padding(
              padding: const EdgeInsets.only(left: 10),
              // Adjust padding as needed
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Cart()));
                },
                child: Icon(
                  Icons.shopping_cart_sharp,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height *
                      0.01), // Responsive padding
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // Position of shadow
                    ),
                  ],
                ),
                height: MediaQuery.of(context).size.height *
                    0.3, // Responsive height
                child: PageView(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height *
                              0.02), // Image padding
                      child: Image.asset(
                        'assets/images/homeadd1.jpg',
                        fit: BoxFit.cover, // Ensures image scales properly
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height *
                              0.02), // Image padding
                      child: Image.asset(
                        'assets/images/homeadd2.jpg',
                        fit: BoxFit.cover, // Ensures image scales properly
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 660,
                // color: Colors.black38,
                child: Column(
                  children: [
                    Text(
                      "Expert Care For All Your Devices",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: FractionallySizedBox(
                        widthFactor: 0.8, // 80% of the available width
                        child: Container(
                          height: 50, // Fixed height
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Search a Device',
                              labelStyle: TextStyle(
                                fontSize: 18,
                                // Adjust font size for larger screens
                                fontWeight: FontWeight.bold,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(width: 2, color: Colors.white),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                size: 24, // Adjust icon size for better fit
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 30),
                                    child: Container(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      TelevisionDetailsPage()));
                                        },
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                            'assets/images/tv.webp',
                                          ),
                                          backgroundColor: Colors.cyan,
                                        ),
                                      ),
                                      height: 55,
                                      width: 55,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text("Television"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text("Protection Plan"),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 30),
                                    child: Container(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Mobile()));
                                        },
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                            'assets/images/mobile.webp',
                                          ),
                                          backgroundColor: Colors.cyan,
                                        ),
                                      ),
                                      height: 55,
                                      width: 55,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Text("Mobile & Tablet"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Text("Protection Plan"),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 7, top: 30),
                                    child: Container(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Refrigerator()));
                                        },
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                            'assets/images/refrigerators.webp',
                                          ),
                                          backgroundColor: Colors.cyan,
                                        ),
                                      ),
                                      height: 55,
                                      width: 55,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text("Refrigerator"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Protection Plan"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          height: 140,
                          // color: Colors.green,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30, top: 30),
                                    child: Container(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Laptop()));
                                        },
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                            'assets/images/laptops.png',
                                          ),
                                          backgroundColor: Colors.cyan,
                                        ),
                                      ),
                                      height: 55,
                                      width: 55,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text("Laptop"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text("Complete Care"),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 40, top: 30),
                                    child: Container(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Washing()));
                                        },
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                            'assets/images/washing.webp',
                                          ),
                                          backgroundColor: Colors.cyan,
                                        ),
                                      ),
                                      height: 55,
                                      width: 55,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Text("Washing"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Text("Machin..."),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30, top: 30),
                                    child: Container(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Microwave()));
                                        },
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                            'assets/images/microwave.webp',
                                          ),
                                          backgroundColor: Colors.cyan,
                                        ),
                                      ),
                                      height: 55,
                                      width: 55,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 35),
                                    child: Text("Microwave"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 35),
                                    child: Text("Protection Plan"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          height: 140,
                          // color: Colors.orange,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 40, top: 30),
                                    child: Container(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Printer()));
                                        },
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                            'assets/images/printer.webp',
                                          ),
                                          backgroundColor: Colors.cyan,
                                        ),
                                      ),
                                      height: 55,
                                      width: 55,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Text("Printer &"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Text("Scann..."),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30, top: 30),
                                    child: Container(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Audio()));
                                        },
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                            'assets/images/audios.webp',
                                          ),
                                          backgroundColor: Colors.cyan,
                                        ),
                                      ),
                                      height: 55,
                                      width: 55,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Text("Audio System"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Text("Protection Plan"),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 30),
                                    child: Container(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Desktop()));
                                        },
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                            'assets/images/desk.png',
                                          ),
                                          backgroundColor: Colors.cyan,
                                        ),
                                      ),
                                      height: 55,
                                      width: 55,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Text("Laptop &"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Text("Deskto..."),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          height: 140,
                          // color: Colors.yellow,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, top: 30),
                                    child: Container(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Camera()));
                                        },
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                            'assets/images/camera.png',
                                          ),
                                          backgroundColor: Colors.cyan,
                                        ),
                                      ),
                                      height: 55,
                                      width: 55,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text("Digital Camera"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text("Protection Plan"),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 40, top: 30),
                                    child: Container(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Gaming()));
                                        },
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                            'assets/images/Gaming.webp',
                                          ),
                                          backgroundColor: Colors.cyan,
                                        ),
                                      ),
                                      height: 55,
                                      width: 55,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 45),
                                    child: Text("Gaming"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Text("Consol..."),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => More()));
                                },
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 50, top: 30),
                                      child: Container(
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                            'assets/images/elec.jpg',
                                          ),
                                          backgroundColor: Colors.cyan,
                                        ),
                                        height: 55,
                                        width: 55,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 50),
                                      child: Text("39+ More"),
                                    ),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(left: 70),
                                    //   child: Text("Protection Plan"),
                                    // ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          height: 140,
                          // color: Colors.pink,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 60),
                      child: Text(
                        "Facing issues With your devices",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 45, top: 5),
                      child: Text(
                        "let us help you with all your device",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Container(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                    'assets/images/Rin.jpg',
                                  ),
                                  // backgroundColor: Colors.cyan,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Text(
                                    "SERVICE REQUEST",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            height: 70,
                            width: 155,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.green)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Container(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                    'assets/images/arrow.webp',
                                  ),
                                  // backgroundColor: Colors.cyan,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "ACTIVATE PLAN",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            height: 70,
                            width: 155,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.green)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                height: 170,
                // color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 450,
                width: 380,
                color: Colors.grey,
                child: Image.asset(
                  'assets/images/totalcare.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              "Easy & affordable care for your devices",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const Divider(
              color: Colors.grey,
              height: 30,
              thickness: 2,
            ),
            Text(
              "We have covered",
              style: TextStyle(fontSize: 22),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 20),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/home.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Text(
                          "10,000+",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text("trusted retail store partners"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 20),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/brand.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 120),
                        child: Text(
                          "300+",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text("Brands covered across country"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 20),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/smail.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Text(
                          "80+",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text("Lakh happy and loyal"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 105,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/amazon.png'),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, right: 6),
                              child: Text(
                                '4.0',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: RatingBar(
                                size: 20,
                                filledIcon: Icons.star,
                                emptyIcon: Icons.star_border,
                                onRatingChanged: (value) =>
                                    debugPrint('$value'),
                                initialRating: 4,
                                maxRating: 5,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5, left: 10),
                          child: Text(
                            '6,000+ Reviews',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/google.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, right: 6),
                                child: Text(
                                  '4.0',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: RatingBar(
                                  size: 20,
                                  filledIcon: Icons.star,
                                  emptyIcon: Icons.star_border,
                                  onRatingChanged: (value) =>
                                      debugPrint('$value'),
                                  initialRating: 4,
                                  maxRating: 5,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5, left: 10),
                            child: Text(
                              '2,200+ Reviews',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 520,
                // color: Colors.grey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Container(
                        child: Text(
                          "Plans for your digital devices",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Container(
                        child:
                            Text("Trusted & affordable plans for your devices"),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Fitness()));
                                  },
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: 130,
                                          width: 150,
                                          child: Image.asset(
                                            'assets/images/fitnesstrack.webp',
                                          ),
                                          // color: Colors.blue,
                                          decoration: BoxDecoration(
                                            color: Colors.cyan,
                                            border: Border.all(
                                                width: 1, color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: 80,
                                          width: 150,
                                          child: Center(
                                              child: Text(
                                            'Fitness Tracker',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1, color: Colors.black),
                                          ),
                                          // color: Colors.black38,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Digital()));
                                  },
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: 130,
                                          width: 150,
                                          child: Image.asset(
                                            'assets/images/camera.png',
                                          ),
                                          // color: Colors.blue,
                                          decoration: BoxDecoration(
                                            color: Colors.cyan,
                                            border: Border.all(
                                                width: 1, color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: 80,
                                          width: 150,
                                          child: Center(
                                              child: Text(
                                            'Digital Camera',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          // color: Colors.black38,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1, color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Desk()));
                                  },
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: 130,
                                          width: 150,
                                          child: Image.asset(
                                            'assets/images/desk.png',
                                          ),
                                          // color: Colors.blue,
                                          decoration: BoxDecoration(
                                            color: Colors.cyan,
                                            border: Border.all(
                                                width: 1, color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: 80,
                                          width: 150,
                                          child: Center(
                                              child: Text(
                                            'Desktop',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          // color: Colors.black38,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1, color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Audios()));
                                  },
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: 130,
                                          width: 150,
                                          child: Image.asset(
                                            'assets/images/audios.webp',
                                          ),
                                          // color: Colors.blue,
                                          decoration: BoxDecoration(
                                            color: Colors.cyan,
                                            border: Border.all(
                                                width: 1, color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: 80,
                                          width: 150,
                                          child: Center(
                                              child: Text(
                                            'Audio System',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          // color: Colors.black38,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1, color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              // color: Colors.grey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 100),
                    child: Container(
                        child: Text(
                      'Warranty Plans for you',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                        child: Text(
                      'Keep your devices safe and secure',
                      style: TextStyle(fontSize: 18),
                    )),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Chopper()));
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 140,
                            width: 170,
                            child: Image.asset('assets/images/chopper.webp'),
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            // color: Colors.red,
                          ),
                          Container(
                            height: 90,
                            width: 170,
                            child: Center(
                                child: Text(
                              'Chopper and Blen...',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            // color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Electric()));
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 140,
                            width: 170,
                            child: Image.asset('assets/images/cooker.jpg'),
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            // color: Colors.yellow,
                          ),
                          Container(
                            height: 90,
                            width: 170,
                            child: Center(
                                child: Text(
                              'Electric Cooker',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            // color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Fan()));
                      },
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset('assets/images/fan.png'),
                            height: 140,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            // color: Colors.green,
                          ),
                          Container(
                            child: Center(
                                child: Text(
                              'Fan',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )),
                            height: 90,
                            width: 170,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            // color: Colors.black38,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Iron()));
                      },
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset('assets/images/iron.png'),
                            height: 140,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            // color: Colors.brown,
                          ),
                          Container(
                            height: 90,
                            width: 170,
                            child: Center(
                                child: Text(
                              'Iron',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            // color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Juicer()));
                      },
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset('assets/images/Mixer.png'),
                            height: 140,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            // color: Colors.brown,
                          ),
                          Container(
                            height: 90,
                            width: 170,
                            child: Center(
                                child: Text(
                              'Juicer Mixer Grinder',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            // color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Kettle()));
                      },
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset('assets/images/kettle.png'),
                            height: 140,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            // color: Colors.brown,
                          ),
                          Container(
                            child: Center(
                                child: Text(
                              'Kettle',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )),
                            height: 90,
                            width: 170,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            // color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
