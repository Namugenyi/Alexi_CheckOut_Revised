import 'package:flutter/material.dart';

class MobileMoney extends StatelessWidget {
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
                'Mobile Money',
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
        body: Column(children: <Widget>[
          Container(height: 20.0, color: Colors.green[700]),
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
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                      child: Text(
                        'Order Summary',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(130.0, 20.0, 0.0, 0.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('See Details'),
                        style: TextButton.styleFrom(
                          primary: Colors.green[700],
                          textStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 65.0,
                  width: 355.0,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: []),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
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
                  height: 15.0,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 200.0, 0.0),
                  child: Text(
                    'You will pay with',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Column(
                  children: [
                    Container(
                      height: 80.0,
                      width: 355.0,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: []),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 10.0),
                            child: Text(
                              'Airtel xxxx-54',
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
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Change payment method'),
                    style: TextButton.styleFrom(
                      primary: Colors.green[700],
                      textStyle: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
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
                      'Pay Now',
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
          ))
        ]),
      ),
    );
  }
}
