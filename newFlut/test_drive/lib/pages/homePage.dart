import 'package:flutter/material.dart';
import 'package:test_drive/utils/cards.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

Color _iconColor = Colors.blue;

class _HomePageState extends State<HomePage> {
  // Initial color

  void _changeColor() {
    if (_iconColor == Colors.blue) {
      setState(() {
        _iconColor = _iconColor == Colors.blue ? Colors.red : Colors.blue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                )),
            child: Center(
              child: Text(
                'Home page',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.all(20),
              width: 200,
              height: 280,
              child: Image.asset(
                'lib/images/chef3.jpg',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
            ),
            child: Text(
              'Most used recipes',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            alignment: AlignmentDirectional(20, 20),
            height: 420,
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent[200],
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: ((context, index) {
                return Cards(
                  name: 'Name of food',
                  iconColor: _iconColor, // Pass down the color state
                  onTap: _changeColor, // Pass down the onTap function
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
