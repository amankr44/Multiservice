import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class About extends StatelessWidget {
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
      appBar: AppBar(title: Text('Personal Details',style: TextStyle(fontSize: 16),),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          _buildListTile(
            title: 'About Us',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            },
          ),
          Divider(),
          _buildListTile(

            title: 'Privacy Policy',
            onTap: () {
              // Navigate to Order & Booking page
            },
          ),
          Divider(),
          _buildListTile(

            title: 'Terms of Use',
            onTap: () {
              // Navigate to My Request page
            },
          ),
          Divider(),
          _buildListTile(

            title: 'Customer Consent',
            onTap: () {
              // Navigate to Refer & Earn page
            },
          ),
          Divider(),

          _buildListTile(

            title: 'Grievance Redressal',
            onTap: () {
              // Navigate to Refer & Earn page
            },
          ),
          Divider(),
          _buildListTile(

            title: 'LSP Partners',
            onTap: () {
              // Navigate to Refer & Earn page
            },
          ),
          Divider(),




        ],
      ),


    );
  }
}