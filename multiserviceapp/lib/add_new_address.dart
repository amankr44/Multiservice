import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiserviceapp/profile_details_page.dart';

class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget _buildListTile({required String title, required VoidCallback onTap}) {
      return ListTile(
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 330,
                width: double.infinity,
                color: Colors.grey,
              ),
              SizedBox(height: 16),
              Text(
                'Add Service Address',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('Our Engineer will arrive at this location to provide Service'),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Pincode',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number, // Numeric keyboard for pincode
                    ),
                  ),
                  SizedBox(width: 16), // Space between the text fields
                  Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'City',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'House No./Apartment Name/Locality',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'House No./Apartment Name/Locality',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20), // Space before the buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle Save action
                      print('Save button pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Set discard button color
                    ),
                    child: Text('Save',style: TextStyle(color: Colors.white),),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle Discard action
                      print('Discard button pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // Set discard button color
                    ),
                    child: Text('Discard',style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}