import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:multiserviceapp/logout.dart';
import 'package:multiserviceapp/manage_address_page.dart';
import 'package:multiserviceapp/profile_details_page.dart';
import 'package:multiserviceapp/setting.dart';

class Personal extends StatelessWidget {
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
            title: 'Profile Details',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
          Divider(),
          _buildListTile(

            title: 'Manage Address',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Manage()),
              );
            },
          ),
          Divider(),
          _buildListTile(

            title: 'Setting',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Setting()),
              );
            },
          ),
          Divider(),
          _buildListTile(

            title: 'Logout',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Logout()),
              );
            },
          ),
          Divider(),




        ],
      ),


    );
  }
}