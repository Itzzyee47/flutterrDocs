// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_name, prefer_interpolation_to_compose_strings
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  // final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    final Color bgcolor = Color.fromRGBO(216, 245, 245, 1);
    final Color pcolor = Color.fromRGBO(102, 221, 239, 1);
    final Color scolor = Color.fromARGB(255, 255, 238, 0);

    return Container(
      color: bgcolor,
      child: Center(
          child: Text(
        'WELCOME to the HOME PAGE', //+ user!.email!,
      )),
    );
  }
}
