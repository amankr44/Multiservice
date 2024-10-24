import 'dart:async';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Refer extends StatefulWidget {
  @override
  _ReferState createState() => _ReferState();
}

class _ReferState extends State<Refer> {
  final PageController _pageController = PageController();
  final int _numPages = 4;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_pageController.hasClients) {
        _currentPage = (_currentPage + 1) % _numPages;
        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _shareInviteLink() {
    Share.share('Check out this awesome app! Join using this link: https://your-invite-link.com');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        title: Text('Refer & Earn'),
      ),
      body: Column(
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
                          color: _currentPage == index
                              ? Colors.white
                              : Colors.grey,
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
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 30),
                        child: Container(
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/share.png'),
                            backgroundColor: Colors.cyan,
                          ),
                          height: 55,
                          width: 55,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Share invite link"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("With friends"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 30),
                        child: Container(
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/install.jpg'),
                            backgroundColor: Colors.cyan,
                          ),
                          height: 55,
                          width: 55,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text("Install app"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text("First purchase"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 30),
                        child: Container(
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/win.png'),
                            backgroundColor: Colors.cyan,
                          ),
                          height: 55,
                          width: 55,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("You Win"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Rewards"),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 90),
            child: GestureDetector(
              onTap: _shareInviteLink,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Icon(Icons.share),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text('SHARE INVITE LINK'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
