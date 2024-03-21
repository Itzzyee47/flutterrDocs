import 'package:flutter/material.dart';

class OPage3 extends StatelessWidget {
  const OPage3({Key? key}) : super(key: key);

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
                child: Text('We recommend according to',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        decoration: TextDecoration.none)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Image.asset('lib/images/My_personal_files.png'),
              ),
              Container(
                child: Text(
                  'budget and your diet preferecies',
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
