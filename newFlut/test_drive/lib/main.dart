import 'package:flutter/material.dart';
import 'package:test_drive/pages/onbordingpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MA RECIPE',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Onbordingpage(),
    );
  }
}
