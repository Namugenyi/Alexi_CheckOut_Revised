import 'package:flutter/material.dart';
import 'package:flutter_app/Widgets/EnterAmount.dart';
import 'package:flutter_app/Widgets/InternationalPhoneNumber.dart';
import 'package:flutter_app/Widgets/entertopup.dart';

class TopUpWalletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove banner from top of screen
      home: Scaffold(
        backgroundColor: Colors.green[700],
        appBar: AppBar(
          backgroundColor: Colors.green[700],
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/homePage');
            },
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
                'TopUp Wallet',
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
                  Icons.notifications_outlined,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: 0, // this will be set when a new tab is tapped
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: new Icon(Icons.home),
        //       title: new Text('Home'),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: new Icon(Icons.mail),
        //       title: new Text('Messages'),
        //     ),
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.person), title: Text('Profile'))
        //   ],
        // ),
        body: Column(children: [
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  enterPhone(),
                  SizedBox(
                    height: 20.0,
                  ),
                  InternationalPhoneNumber(),
                  EnterAmount(),
                  SizedBox(
                    height: 30.0,
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
                        'Continue',
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
        ]),
      ),
    );
  }
}
