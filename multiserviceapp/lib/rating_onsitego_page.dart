import 'package:flutter/material.dart';



class RatingPage extends StatefulWidget {
  @override
  _RatingPageState createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  int _rating = 0;

  void _setRating(int rating) {
    setState(() {
      _rating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rate This Service'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'How will you rate our services?',
              style: TextStyle(fontSize: 24.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return IconButton(
                  icon: Icon(
                    index < _rating ? Icons.star : Icons.star_border,
                    color: Colors.amber,
                    size: 36.0,
                  ),
                  onPressed: () => _setRating(index + 1),
                );
              }),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Submit rating
                print('User rating: $_rating');
                // You can implement further logic here, such as sending the rating to a server.
              },
              child: Text('Submit Rating'),
            ),
          ],
        ),
      ),
    );
  }
}
