import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false, // remove banner from top of screen
      home: ScanBarcode(),
    ));

class ScanBarcode extends StatefulWidget {
  @override
  _ScanBarcode createState() => _ScanBarcode();
}

class _ScanBarcode extends State<ScanBarcode> {
  @override
  Widget build(BuildContext context) {
    String _data = "";

    _scan() async {
      FlutterBarcodeScanner.scanBarcode(
              "#000000", "cancel", true, ScanMode.BARCODE)
          .then((value) => setState(() => _data = value));
    }

    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0), // here the desired height
          child: AppBar(
              backgroundColor: Colors.grey[100],
              title: Center(
                child: Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Text(
                    'Shoprite Victoria Mall',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
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
                      color: Colors.black,
                    ),
                  ),
                ),
              ]),
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
        body: SingleChildScrollView(
            child: SafeArea(
                child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 50.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      suffixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: IconButton(
                  onPressed: () => _scan(),
                  icon: Icon(
                    Icons.qr_code_scanner_outlined,
                    size: 35,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Text(_data),
            ],
          ),
          Center(
            child: Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: Positioned(
                  //left: 20,
                  bottom: 200,
                  child: Container(
                    height: 150.0,
                    width: 350.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      // gradient: LinearGradient(
                      //   begin: Alignment.topRight,
                      //   end: Alignment.bottomLeft,
                      //   colors: [
                      //     Colors.white,
                      //     Colors.lightGreen,
                      //   ],
                      // )
                      color: Color.fromRGBO(242, 251, 242, 1.0),
                    ),
                    // child: Image.asset(
                    //   'images/Santa.png',
                    // ),
                  ),
                )),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                child: Text(
                  'Categories', //must add images to categories
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(190.0, 20.0, 0.0, 0.0),
                child: Text(
                  'See all',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.green[700]),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Row(
              //must change into a vertical scroll
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.white,
                          Color.fromRGBO(242, 251, 242, 1.0),
                        ],
                      )),
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
                  height: 70.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.white,
                        Color.fromRGBO(242, 251, 242, 1.0),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                    // image: new DecorationImage(
                    //   image: new ExactAssetImage(
                    //     'images/Alcohol.png',
                    //   ),
                    //   //fit: BoxFit.cover,
                    // )
                  ),
                  child: Center(
                    child: Text(
                      'Food',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 30.0, 0.0, 0.0),
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
                    padding: const EdgeInsets.fromLTRB(100.0, 30.0, 0.0, 0.0),
                    child: Text(
                      'See all',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.green[700]),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 135.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: []),
                    ),
                    Container(
                      height: 135.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: []),
                    ),
                    Container(
                      height: 135.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: []),
                    ),
                  ],
                ),
              ),
            ],
          )
        ]))));
  }
}
