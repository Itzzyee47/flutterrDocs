import 'package:flutter/material.dart';
import 'package:indexed/indexed.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        scrollDirection: Axis.vertical,
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        children: [
          Container(
            height: 250,
            child: Center(
              child: Indexer(
                alignment: AlignmentDirectional.center,
                children: [
                  Indexed(
                    index: 0, //more the index, upper the order
                    child: Positioned(
                      top: 30,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        height: 170,
                        width: 170,
                        child: Image.asset('lib/images/chef3.jpg',
                            alignment: Alignment.center),
                      ),
                    ),
                  ),
                  Indexed(
                    index: 3, //less the value, below the order
                    child: Positioned(
                      top: 180,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueAccent),
                        child: IconButton(
                          icon: Icon(
                            Icons.add,
                          ),
                          onPressed: () {},
                          //      async {
                          // image = await picker.pickImage(source: ImageSource.gallery);
                          // setState(() {
                          //   //update UI
                          // });
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Indexed(
                      child: Positioned(
                    bottom: 1,
                    child: Text('UserName..', style: TextStyle(fontSize: 23)),
                  )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 9,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(width: 70, child: Icon(Icons.edit)),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Text('Edit Profile',
                            style: TextStyle(fontSize: 13)),
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 9,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(width: 70, child: Icon(Icons.settings)),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Text('Edit settings',
                            style: TextStyle(fontSize: 13)),
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 9,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(width: 70, child: Icon(Icons.edit)),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Text('Edit Profile',
                            style: TextStyle(fontSize: 13)),
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 9,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(width: 70, child: Icon(Icons.settings)),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Text('Edit settings',
                            style: TextStyle(fontSize: 13)),
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 9,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(width: 70, child: Icon(Icons.edit)),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Text('Edit Profile',
                            style: TextStyle(fontSize: 13)),
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 9,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(width: 70, child: Icon(Icons.settings)),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Text('Edit settings',
                            style: TextStyle(fontSize: 13)),
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 9,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(width: 70, child: Icon(Icons.edit)),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Text('Edit Profile',
                            style: TextStyle(fontSize: 13)),
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 9,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(width: 70, child: Icon(Icons.settings)),
                    Expanded(
                      flex: 3,
                      child: Container(
                          child: Text('Edit settings',
                              style: TextStyle(fontSize: 13))),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
