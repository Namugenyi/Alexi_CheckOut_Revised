import 'package:flutter/material.dart';
import 'package:flutter_app/Widgets/AccountTextButtons.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove banner from top of screen
      home: Scaffold(
        backgroundColor: Colors.green[700],
        appBar: AppBar(
          backgroundColor: Colors.green[700],
          leading: IconButton(
            onPressed: () {},
            icon: Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.arrow_back_outlined,
                size: 30,
              ),
            ),
          ),
          title: Center(
            child: Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Text(
                'Account',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          elevation: 0.0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(
                  Icons.more_horiz_outlined,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        //
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0, // this will be set when a new tab is tapped
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.apps),
                title: Text('Home'),
                //activeColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                title: Text('Users'),
                //activeColor: Colors.purpleAccent),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                title: Text('Messages'),
                //activeColor: Colors.pink),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text('Settings'),
                //activeColor: Colors.blue),
              ),
            ]),
        body: Column(children: <Widget>[
          Container(
            height: 130.0,
            color: Colors.green[700],
            child: Row(children: <Widget>[
              //Avatar(),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 20.0),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 45.0,
                  child: Text(
                    'CN',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.green),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                child: Column(
                  children: [
                    Text(
                      'Christine Namugenyi',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'cnamugenyi08@gmail.com',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: [
                  AccountTextButtons(),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
