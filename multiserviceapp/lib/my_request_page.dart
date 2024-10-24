import 'package:flutter/material.dart';
import 'package:multiserviceapp/closed_requst_page.dart';
import 'package:multiserviceapp/login.dart';

import 'main.dart';

class Request extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
  bool _isOpenRequestClicked = true; // Start with the Open Requests button as blue
  bool _isClosedRequestClicked = false; // Start with the Closed Request button as green

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('My Requests'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.greenAccent; // Color when pressed
                      }
                      return _isOpenRequestClicked ? Colors.blue : Colors.green;
                    },
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Text color
                ),
                child: Text('Open Requests'),
                onPressed: () {
                  setState(() {
                    _isOpenRequestClicked = true;
                    _isClosedRequestClicked = false; // Reset the other button's state
                  });
                  // Navigate to the next page or perform an action
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => MyHomePage()), // Example navigation
                  // );
                },
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.greenAccent; // Color when pressed
                      }
                      return _isClosedRequestClicked ? Colors.blue : Colors.green;
                    },
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Text color
                ),
                child: Text('Closed Request'),
                onPressed: () {
                  setState(() {
                    _isClosedRequestClicked = true;
                    _isOpenRequestClicked = false; // Reset the other button's state
                  });
                  // Navigate to the next page or perform an action
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Close()), // Example navigation
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 20), // Space between buttons and the main content
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0), // Uniform padding for consistency
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.reviews,
                      size: 180,
                    ),
                    SizedBox(height: 20), // Added spacing between icon and text
                    Text(
                      'You have no active service requests',
                      style: TextStyle(fontSize: 22),
                      textAlign: TextAlign.center, // Center the text
                    ),
                    // SizedBox(height: 20), // Added spacing between text and container
                    Container(
                      width: 300,
                      alignment: Alignment.center, // Center the content
                      child: Text(
                        'Book repair services or shop protection and maintenance plans for your device.',
                        textAlign: TextAlign.center, // Center the text inside the container
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 20), // Added spacing between container and button

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
