import 'package:flutter/material.dart';
import 'package:test_drive/app.dart';
import 'package:test_drive/onboardingPages/oPage1.dart';
import 'package:test_drive/onboardingPages/oPage2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_drive/onboardingPages/oPage3.dart';
import 'package:test_drive/onboardingPages/oPage4.dart';

class Onbordingpage extends StatefulWidget {
  const Onbordingpage({Key? key}) : super(key: key);

  @override
  State<Onbordingpage> createState() => _OnbordingpageState();
}

class _OnbordingpageState extends State<Onbordingpage> {
  // keep track of page....
  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (value) {
              setState(() {
                onLastPage = (value == 3);
              });
            },
            controller: _controller,
            children: [
              OPage1(),
              OPage2(),
              OPage3(),
              OPage4(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip btn...
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(3);
                  },
                  child: Text('Skip'),
                ),

                SmoothPageIndicator(
                  controller: _controller,
                  count: 4,
                  effect: ExpandingDotsEffect(),
                ),

                //next or done btn...
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return App();
                          }));
                        },
                        child: Text('Done'),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text('Next'),
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}
