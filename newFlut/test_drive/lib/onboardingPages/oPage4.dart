import 'package:flutter/material.dart';

class OPage4 extends StatelessWidget {
  const OPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text('Join us and experence',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        decoration: TextDecoration.none)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Image.asset('lib/images/undraw_Tasting_re_3k5a.png'),
              ),
              Container(
                child: Text(
                  'helthy meals at your own cost',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      decoration: TextDecoration.none),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
