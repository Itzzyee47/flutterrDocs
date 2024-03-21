import 'package:flutter/material.dart';
import 'package:indexed/indexed.dart';

class Cards extends StatefulWidget {
  final String name;
  final Color iconColor; // Color state
  final VoidCallback onTap; // Function for changing color

  Cards({required this.name, required this.iconColor, required this.onTap});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  Color _iconColor = Colors.blue; // Initial color

  void _changeColor() {
    setState(() {
      _iconColor = _iconColor == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.purple[400],
      ),
      width: 220,
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      child: Indexer(
        alignment: AlignmentDirectional.center,
        children: [
          Indexed(
            index: 0, //more the index, upper the order
            child: Positioned(
              height: 410,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'lib/images/strawberry-milk.jpg',
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Indexed(
            index: 2, //less the value, below the order
            child: Positioned(
              top: 3,
              right: 3,
              child: Container(
                child: GestureDetector(
                  onTap: _changeColor,
                  child: Icon(
                    Icons.star,
                    color: _iconColor,
                  ),
                ),
              ),
            ),
          ),
          Indexed(
            index: 3, //less the value, below the order
            child: Positioned(
              bottom: 3,
              child: Container(
                child: Text(
                  widget.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
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
