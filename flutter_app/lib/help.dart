import 'package:flutter/material.dart';

class Help extends StatelessWidget {
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
                'Help',
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'What do you need help with?',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Column(
                  children: [
                    Container(
                      height: 150.0,
                      width: 355.0,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: []),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(0.0, 20.0, 20.0, 0.0),
                              child: Icon(
                                Icons.arrow_back_outlined,
                                size: 30,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Chat with Alexibot',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                Column(
                  children: [
                    Container(
                      height: 150.0,
                      width: 355.0,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: []),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(0.0, 20.0, 20.0, 0.0),
                              child: Icon(
                                Icons.question_answer_outlined,
                                size: 45,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            'Frequently asked Questions',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
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
              ],
            ),
          ))
        ]),
      ),
    );
  }
}
