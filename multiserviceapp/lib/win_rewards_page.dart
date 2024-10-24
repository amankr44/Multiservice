import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WinRewardsPage extends StatefulWidget {
  @override
  _WinRewardsPageState createState() => _WinRewardsPageState();
}

class _WinRewardsPageState extends State<WinRewardsPage> {
  final _formKey = GlobalKey<FormState>();
  final _mobileNumberController = TextEditingController();
  final _pageController = PageController();
  int _currentPage = 0;
  final int _numPages = 4;

  void _shareInviteLink() {
    // Implement your share functionality here
    print('Share invite link tapped');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text('Win Rewards', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text('Hey Aman,'),
            Text('Invite Friends & Earn', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Container(
              height: 230,
              width: double.infinity,
              child: Stack(
                children: [
                  PageView(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    children: [
                      Image.asset('assets/images/1streward.jpg', fit: BoxFit.fill),
                      Image.asset('assets/images/2ndreward.jpg', fit: BoxFit.fill),
                      Image.asset('assets/images/3rdreward.jpg', fit: BoxFit.fill),
                      Image.asset('assets/images/4threward.jpg', fit: BoxFit.fill),
                    ],
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        _numPages,
                            (index) => Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          width: 8.0,
                          height: 8.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentPage == index ? Colors.white : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text('Invite Your Friends Now', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Divider(),
                Text('How does It Work?', style: TextStyle(fontSize: 16)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 30),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/share.png'),
                            backgroundColor: Colors.cyan,
                            radius: 27.5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text("Share invite link"),
                        ),
                        Text("With friends"),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 30),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/install.jpg'),
                            backgroundColor: Colors.cyan,
                            radius: 27.5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text("Install app"),
                        ),
                        Text("First purchase"),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25, top: 30),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/win.png'),
                            backgroundColor: Colors.cyan,
                            radius: 27.5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text("You Win"),
                        ),
                        Text("Rewards"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
              child: GestureDetector(
                onTap: _shareInviteLink,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.share),
                    SizedBox(width: 5),
                    Text('SHARE INVITE LINK'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _mobileNumberController.dispose();
    super.dispose();
  }
}
