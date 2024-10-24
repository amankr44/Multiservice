import 'package:flutter/material.dart';
import 'package:multiserviceapp/add_new_address.dart';
import 'package:multiserviceapp/profile_details_page.dart';

class Manage extends StatelessWidget {
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
        title: Text(
          'Manage Address',
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Add()));
          },
          child: Container(
            child: Row(
              mainAxisSize: MainAxisSize.min, // Centers the row horizontally in its parent
              children: [
                Icon(Icons.add),
                SizedBox(width: 8), // Adds some space between the icon and the text
                Text('ADD NEW ADDRESS'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
