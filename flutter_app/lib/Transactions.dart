import 'package:flutter/material.dart';
import 'package:flutter_app/Widgets/Avatar.dart';

class Transactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       colors: [Colors.green[100], Colors.green[700]],
        //     ),
        //   ),
        // ),
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
              'Transactions',
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
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // background image and bottom contents
          Avatar(),
          // Profile image
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 200.0),
                child: Positioned(
                  top: 150,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Container(
                      height: 100.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      // child: Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: [
                      //     OutlinedButton.icon(
                      //       style: ButtonStyle(
                      //         shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(10.0))),
                      //       ),
                      //       icon: Icon(
                      //         Icons.arrow_drop_down_outlined,
                      //         color: Colors.black54,
                      //       ),
                      //       onPressed: () {},
                      //       label: Text(
                      //         'All categories',
                      //         style: TextStyle(
                      //           fontFamily: 'Poppins',
                      //           fontSize: 14.0,
                      //           fontWeight: FontWeight.bold,
                      //           color: Colors.black54,
                      //         ),
                      //       ),
                      //     ),
                      //     OutlinedButton.icon(
                      //       style: ButtonStyle(
                      //         shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(10.0))),
                      //       ),
                      //       icon: Icon(
                      //         Icons.arrow_drop_down_outlined,
                      //         color: Colors.black54,
                      //       ),
                      //       onPressed: () {},
                      //       label: Text(
                      //         'Status',
                      //         style: TextStyle(
                      //           fontFamily: 'Poppins',
                      //           fontSize: 14.0,
                      //           fontWeight: FontWeight.bold,
                      //           color: Colors.black54,
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 200.0),
                child: Positioned(
                  child: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Container(
                      height: 100.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 50.0),
            child: Text(
              'See Activity',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 320,
            child: Container(
              height: 60.0,
              width: 355.0,
              decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: Column(
                children: [
                  Container(
                    child: Row(),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 410,
            child: Container(
              height: 60.0,
              width: 355.0,
              decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: Column(
                children: [
                  Container(
                    child: Row(),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 500,
            child: Container(
              height: 60.0,
              width: 355.0,
              decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: Column(
                children: [
                  Container(
                    child: Row(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
