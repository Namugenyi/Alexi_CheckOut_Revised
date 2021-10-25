import 'package:flutter/material.dart';
import 'package:flutter_app/Widgets/RememberMe.dart';

class CardPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // remove banner from top of screen
        home: Scaffold(
            backgroundColor: Colors.green[700],
            appBar: AppBar(
              backgroundColor: Colors.green[700],
              title: Center(
                child: Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Text(
                    'Card Payment',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              elevation: 0.0,
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
                    child: Column(children: [
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 15.0, 120.0, 0.0),
                        child: Text(
                          'Secure Card Payment',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(25.0, 20.0, 0.0, 0.0),
                            child: Text(
                              'Credit Cards',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                120.0, 20.0, 0.0, 0.0),
                            child: Container(
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.photo_camera,
                                  size: 20,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                            child: Text(
                              'Scan card',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.grey[700]),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 0.0, 160.0, 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 50.0,
                              width: 80.0,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Image.asset('images/Mastercard-Logo.png'),
                            ),
                            Container(
                              height: 50.0,
                              width: 80.0,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Image.asset('images/Visa-Logo.png'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                          width: 360,
                          //padding: EdgeInsets.all(12),
                          child: Column(children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Cardholder Name',
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              width: 360,
                              //padding: EdgeInsets.all(12),
                              child: Column(
                                children: <Widget>[
                                  TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Card Number',
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 20.0, 240.0, 0.0),
                                    child: Text(
                                      'Expiry date',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(top: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 40.0,
                                          width: 110.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 8.0),
                                            child: TextField(
                                              keyboardType:
                                                  TextInputType.number,
                                              obscureText: true,
                                              decoration: const InputDecoration(
                                                border: InputBorder.none,
                                                hintText: 'Month',
                                                suffixIcon: Icon(
                                                  Icons.expand_more_outlined,
                                                  color: Colors.black,
                                                  size: 30,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 40.0,
                                          width: 100.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 8.0),
                                            child: TextField(
                                              keyboardType:
                                                  TextInputType.number,
                                              obscureText: true,
                                              decoration: const InputDecoration(
                                                border: InputBorder.none,
                                                hintText: 'Year',
                                                suffixIcon: Icon(
                                                  Icons.expand_more_outlined,
                                                  color: Colors.black,
                                                  size: 30,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 40.0,
                                          width: 100.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 8.0),
                                            child: TextField(
                                              keyboardType:
                                                  TextInputType.number,
                                              obscureText: true,
                                              decoration: const InputDecoration(
                                                border: InputBorder.none,
                                                hintText: 'CVV',
                                                suffixIcon: Icon(
                                                  Icons.help_outline_outlined,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Container(
                                            //margin: EdgeInsets.only(right: 10.0),
                                            child: rememberMe(),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Save card details',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Container(
                                  //   child: Row(
                                  //     children: [
                                  //       Padding(
                                  //         padding: const EdgeInsets.only(left: 10.0),
                                  //         child: Container(
                                  //           //margin: EdgeInsets.only(right: 10.0),
                                  //           child: rememberMe(),
                                  //         ),
                                  //       ),
                                  //       Padding(
                                  //         padding: const EdgeInsets.all(8.0),
                                  //         child: Text(
                                  //           'Accept Alexi Checkout Terms & Condition',
                                  //           style: TextStyle(
                                  //             fontFamily: 'Poppins',
                                  //             fontWeight: FontWeight.normal,
                                  //             fontSize: 14,
                                  //           ),
                                  //         ),
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 20.0),
                                        child: Container(
                                          height: 50,
                                          width: 150,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.grey,
                                              onPrimary: Colors.white,
                                            ),
                                            child: Text(
                                              'Back',
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
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 20.0),
                                        child: Container(
                                          height: 50,
                                          width: 150,
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
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ]))
                    ])),
              ),
            ])));
  }
}
