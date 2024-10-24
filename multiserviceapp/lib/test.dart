import 'package:flutter/material.dart';

class MyListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('My List'),
    ),
    body: ListView(
    children: [
    _buildListTile(
    icon: Icons.person,
    title: 'Personal Details',
    onTap: () {
    // Navigate to Personal Details page
    },
    ),
    Divider(),
    _buildListTile(
    icon: Icons.shopping_cart,
    title: 'Order & Booking',
    onTap: () {
    // Navigate to Order & Booking page
    },
    ),
    Divider(),
    _buildListTile(
    icon: Icons.request_page,
    title: 'My Request',
    onTap: () {
    // Navigate to My Request page
    },
    ),
    Divider(),
    _buildListTile(
    icon: Icons.card_giftcard,
    title: 'Refer & Earn',
    onTap: () {
    // Navigate to Refer & Earn page
    },
    ),
    Divider(),
    _buildListTile(
    icon: Icons.redeem,
    title: 'My Rewards',
    onTap: () {
    // Navigate to My Rewards page
    },
    ),
    Divider(),
    _buildListTile(
    icon: Icons.help,
    title: 'Help & Support',
    onTap: () {
    // Navigate to Help &

    },
    ),
      Divider(),
      _buildListTile(
        icon: Icons.info,
        title: 'About Onsitego',
        onTap: () {
          // Navigate to About Onsitego page
        },
      ),
    ],
    ),
    );
  }

  Widget _buildListTile({required IconData icon, required String title, required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: onTap,
    );
  }
}

void main() => runApp(MaterialApp(
  home: MyListPage(),
));
