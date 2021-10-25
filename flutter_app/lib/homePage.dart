import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove banner from top of screen
      home: Scaffold(
        backgroundColor: Colors.green[700],
        appBar: AppBar(
          backgroundColor: Colors.green[700],
          // leading: IconButton(
          //   onPressed: () {},
          //   icon: Padding(
          //     padding: EdgeInsets.only(right: 20.0),
          //     child: Icon(
          //       Icons.arrow_back_outlined,
          //       size: 30,
          //     ),
          //   ),
          // ),
          title: Center(
            child: Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Text(
                'Good morning Christine',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
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
        body: Column(children: [
          Container(
            height: 180.0,
            decoration: BoxDecoration(color: Colors.green[700]
                // gradient: LinearGradient(
                //     begin: Alignment.topLeft,
                //     end: Alignment.topRight,
                //     colors: [Colors.green[100], Colors.green[700]]),
                ),
            child: Column(
              children: [
                Text(
                  'Alexi Wallet Balance',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(100.0, 15.0, 0.0, 0.0),
                  child: Row(
                    children: [
                      Text(
                        'UGX',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        '150000.00',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60.0,
                        width: 160.0,
                        color: Colors.black,
                        child: OutlinedButton.icon(
                          icon: Icon(
                            Icons.account_balance_wallet_outlined,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/topUpWallet');
                          },
                          label: Text(
                            'TopUp Wallet',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 60.0,
                        width: 160.0,
                        color: Colors.grey,
                        child: OutlinedButton.icon(
                          icon: Icon(
                            Icons.redeem_outlined,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                          label: Text(
                            'Gift Wallet',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
                boxShadow: []),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 20.0, 200.0, 0.0),
                  child: Text(
                    'Shop Nearby',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Column(
                  children: [
                    Container(
                      height: 90.0,
                      width: 355.0,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: []),
                      child: Row(children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(280.0, 0.0, 0.0, 40.0),
                          child: TextButton(
                            onPressed: () {},
                            child: Text('See all'),
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
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 200.0, 0.0),
                      child: Text(
                        'Shop Nearby',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: []),
                      child: Center(
                        child: Text(
                          'All',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: []),
                      child: Center(
                        child: Text(
                          'Income',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: []),
                      child: Center(
                        child: Text(
                          'Expenses',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 120.0, 0.0),
                      child: Text(
                        'Alexi Smart Scan Deals',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 90.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: []),
                          ),
                          Container(
                            height: 90.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: []),
                          ),
                          Container(
                            height: 90.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: []),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ))
        ]),
      ),
    );
  }
}
