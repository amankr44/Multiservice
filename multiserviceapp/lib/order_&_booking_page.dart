import 'package:flutter/material.dart';
import 'package:multiserviceapp/login.dart';

import 'main.dart';

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Order & Bookings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              size: 180,
            ),
            SizedBox(height: 20), // Added spacing between icon and text
            Text(
              'We are waiting to serve you!',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 20), // Added spacing between text and container
            Container(
              height: 50,
              width: 300,
              alignment: Alignment.center, // Properly placed alignment
              child: Text(
                'Book repair services or shop protection and maintenance plans for your device.',
                textAlign: TextAlign.center, // Center the text inside the container
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20), // Added spacing between container and button
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Background color
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Text color
              ),

              child: Text('START EXPLORING'),
              onPressed: () {
                // Navigate to the next page or perform an action
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()), // Example navigation
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

