import 'package:flutter/material.dart';

class OPage1 extends StatelessWidget {
  const OPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Be the master',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    decoration: TextDecoration.none),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Image.asset('lib/images/breakfast.png'),
            ),
            Container(
              child: Text(
                'Of all your meals',
                style: TextStyle(
                    color: Colors.black, decoration: TextDecoration.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
