import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool _receiveUpdates = false; // State to manage the toggle switch

  // Method to toggle the switch state
  void _toggleReceiveUpdates(bool value) {
    setState(() {
      _receiveUpdates = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30), // Space before the settings section
            Text(
              'Setting',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Space after the heading
            // Added Padding around Row for better positioning
            Padding(
              padding: const EdgeInsets.only(top: 10.0), // Space before the toggle switch
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'I would like to receive service updates on WhatsApp',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Switch(
                    value: _receiveUpdates,
                    onChanged: _toggleReceiveUpdates,
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
