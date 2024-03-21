import 'package:flutter/material.dart';

class OPage2 extends StatelessWidget {
  const OPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Container(
              child: Text('Get access to',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      decoration: TextDecoration.none)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Image.asset('lib/images/chef2.jpg'),
            ),
            Container(
              child: Text(
                'over a hundred recipes',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    decoration: TextDecoration.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
