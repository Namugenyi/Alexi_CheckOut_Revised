import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CompletePayment extends StatelessWidget {
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
                'Complete Payment',
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
                  Icons.close_outlined,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
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
                Center(
                  child: Container(
                    height: 120.0,
                    width: 120,
                    //padding: EdgeInsets.all(15.0),
                    margin: EdgeInsets.fromLTRB(0.0, 150.0, 0.0, 0.0),
                    child: Image(
                      image: AssetImage('images/ALEXI_LOGO_PNG.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  width: 300.0,
                  child: Text(
                    //'We have made the shopping experience easier than ever.Swipe to learn more',
                    'Thank you for shopping with Alexi!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        //fontStyle: FontStyle.normal,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                ),
                SizedBox(
                  height: 25.0,
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
                      'View Digital Receipt',
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
