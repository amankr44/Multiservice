import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text('Logout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              _showLogoutConfirmationDialog(context);
            },
            child: Text('Logout',style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Set logout button color
            ),
          ),
        ),
      ),
    );
  }

  void _showLogoutConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout Confirmation'),
          content: Text('Are you sure you want to log out of OnsiteGo?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Handle cancel action
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Handle logout action
                Navigator.of(context).pop();
                // Implement logout functionality here
                // For example, navigate to the login page or clear user data
              },
              child: Text('Logout'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.red, // Set logout button color in dialog
              ),
            ),
          ],
        );
      },
    );
  }
}
