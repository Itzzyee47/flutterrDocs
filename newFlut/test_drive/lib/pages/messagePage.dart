import 'package:flutter/material.dart';
import 'package:indexed/indexed.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Center(
        child: Indexer(
          alignment: AlignmentDirectional.center,
          children: [
            Indexed(
              index: 0, //more the index, upper the order
              child: Positioned(
                top: 30,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    'lib/images/chef3.jpg',
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
            Indexed(
              index: 3, //less the value, below the order
              child: Positioned(
                top: 210,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.add,
                    ),
                    onPressed: () {},
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
