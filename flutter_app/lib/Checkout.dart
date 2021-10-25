import 'package:flutter/material.dart';
import 'package:flutter_app/Widgets/AccountTextButtons.dart';

class Checkout extends StatelessWidget {
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
                'Checkout',
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
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.mail),
              title: new Text('Messages'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Profile'))
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 50.0,
              color: Colors.green[700],
              child: Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 50.0),
                  child: Column(
                    children: [],
                  ),
                ),
              ),
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
                    SizedBox(
                      height: 60.0,
                    ),
                    Container(
                      height: 50,
                      width: 350,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green[700],
                          onPrimary: Colors.white,
                        ),
                        child: Text(
                          'Proceed to payment',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
