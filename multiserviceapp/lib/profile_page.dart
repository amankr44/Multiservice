// profile_page.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiserviceapp/about_page.dart';
import 'package:multiserviceapp/help_page.dart';
import 'package:multiserviceapp/my_request_page.dart';
import 'package:multiserviceapp/my_rewards_page.dart';
import 'package:multiserviceapp/order_&_booking_page.dart';
import 'package:multiserviceapp/personal_details_page.dart';
import 'package:multiserviceapp/rating_onsitego_page.dart';
import 'package:multiserviceapp/refer_page.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {



    Widget _buildListTile({required IconData icon, required String title, required VoidCallback onTap}) {
      return ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      );
    }



    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 40,
        backgroundColor: Colors.blue[200],
        title: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              child: CircleAvatar(
              child:Text('AK',style: TextStyle(fontSize: 22),),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("Aman Kumar",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 17),
                  child: Text("+91 7493991930",style: TextStyle(fontSize: 13),),
                )
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          _buildListTile(
            icon: Icons.person,
            title: 'Personal Details',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Personal()),
              );
            },
          ),
          Divider(),
          _buildListTile(
            icon: Icons.shopping_cart,
            title: 'Order & Booking',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Order()),
              );
            },
          ),
          Divider(),
          _buildListTile(
            icon: Icons.request_page,
            title: 'My Request',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Request()),
              );
            },
          ),
          Divider(),
          _buildListTile(
            icon: Icons.card_giftcard,
            title: 'Refer & Earn',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Refer()),
              );
            },
          ),
          Divider(),
          _buildListTile(
            icon: Icons.redeem,
            title: 'My Rewards',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Myrewards()),
              );
            },
          ),
          Divider(),
          _buildListTile(
            icon: Icons.help,
            title: 'Help & Support',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Help()),
              );

            },
          ),
          Divider(),
          _buildListTile(
            icon: Icons.info,
            title: 'About Onsitego',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            },
          ),

          Divider(),
          _buildListTile(
            icon: Icons.thumb_up_alt,
            title: 'Rate Onsitego',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RatingPage()),
              );
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
