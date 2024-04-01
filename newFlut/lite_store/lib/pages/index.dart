// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_name, unused_import
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:lite_store/pages/cartpage.dart';
import 'package:lite_store/pages/homepage.dart';
import 'package:lite_store/pages/shoppage.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexPage();
}

class _IndexPage extends State<Index> {
  final List<Widget> _Pages = [
    MyHomePage(),
    ShopPage(),
    CartPage(),
  ];
  final Color bgcolor = Color.fromRGBO(216, 245, 245, 1);
  final Color pcolor = Color.fromRGBO(102, 221, 239, 1);
  final Color scolor = Color.fromARGB(255, 255, 238, 0);

  // void signUserOut() {
  //   FirebaseAuth.instance.signOut();
  // }

  int _selectedIndex = 0;

  void _navigate(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LITE_store'),
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.menu),
        // ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          // IconButton(onPressed: signUserOut, icon: Icon(Icons.logout))
        ],
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: bgcolor,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(254, 254, 255, 1),
                    ),
                    height: 550,
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                        ),
                        ListTile(
                          onTap: () {},
                          leading: Icon(Icons.person),
                          title: Text('Edit Profile'),
                          trailing: Icon(Icons.keyboard_arrow_right_outlined),
                        ),
                        ListTile(
                          onTap: () {},
                          leading: Icon(Icons.notifications),
                          title: Text('notifications'),
                          trailing: Icon(Icons.keyboard_arrow_right_outlined),
                        ),
                        ListTile(
                          onTap: () {},
                          leading: Icon(Icons.security),
                          title: Text('security'),
                          trailing: Icon(Icons.keyboard_arrow_right_outlined),
                        ),
                        ListTile(
                          onTap: () {},
                          leading: Icon(Icons.language_outlined),
                          title: Text('Language'),
                          trailing: Icon(Icons.keyboard_arrow_right_outlined),
                        ),
                        ListTile(
                          onTap: () {},
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark mode'),
                          trailing: Icon(Icons.keyboard_arrow_right_outlined),
                        ),
                        ListTile(
                          onTap: () {},
                          leading: Icon(Icons.policy_outlined),
                          title: Text('Terms and policies'),
                          trailing: Icon(Icons.keyboard_arrow_right_outlined),
                        ),
                        ListTile(
                          onTap: () {},
                          leading: Icon(Icons.help),
                          title: Text('Help center'),
                          trailing: Icon(Icons.keyboard_arrow_right_outlined),
                        ),
                        ListTile(
                          onTap: () {},
                          leading: Icon(Icons.share),
                          title: Text('Invite friends'),
                          trailing: Icon(Icons.keyboard_arrow_right_outlined),
                        ),
                        ListTile(
                          onTap: () {},
                          leading: Icon(Icons.logout_outlined),
                          title: Text('Logout'),
                          trailing: Icon(Icons.keyboard_arrow_right_outlined),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: _Pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
          animationDuration: Duration(milliseconds: 300),
          onTap: _navigate,
          backgroundColor: bgcolor,
          items: [
            Icon(Icons.home),
            Icon(Icons.store),
            Icon(Icons.shopping_cart),
          ]),
    );
  }
}
