import 'package:flutter/material.dart';
import 'package:multiserviceapp/login.dart';

import 'main.dart';

class Myrewards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('My Rewards'),
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
              'You dont have any rewards Yet',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 20), // Added spacing between text and container
            Container(
              height: 50,
              width: 300,
              alignment: Alignment.center, // Properly placed alignment
              child: Text(
                'Book a service, purchase a plan or refer a friend to win exciting rewards.',
                textAlign: TextAlign.center, // Center the text inside the container
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20), // Added spacing between container and button
            
          ],
        ),
      ),
    );
  }
}

