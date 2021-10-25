import 'package:flutter/material.dart';
import 'package:flutter_app/Widgets/Category_Selector.dart';
import 'package:flutter_app/Widgets/Summary.dart';

class CartSummary extends StatelessWidget {
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
              padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                'Cart Summary',
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
        body: Column(
          children: <Widget>[
            CategorySelector(),
            Container(color: Colors.green[700]),
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
                    Summary(),
                    SizedBox(
                      height: 180.0,
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Container(
                      //
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              'Total:',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      height: 55,
                      width: 350,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green[700],
                          onPrimary: Colors.white,
                        ),
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
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
