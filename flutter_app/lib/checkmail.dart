import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// void main() {
//   runApp(
//       login()
//   );
// }
//Page instructs user to check their email in order to reset password
class checkmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove banner from top of screen
      home: Scaffold(
        backgroundColor: Colors.white,
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
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 110.0,
                    width: 110.0,
                    margin: EdgeInsets.only(top: 155.0),
                    child: Image.asset('images/send_email.png'),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Check your mail',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  width: 350.0,
                  child: Text(
                    //'We have made the shopping experience easier than ever.Swipe to learn more',
                    'We have sent password recovery instructions to your email.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        //fontStyle: FontStyle.normal,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        //fontWeight: FontWeight.w700,
                        //fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        'Not received an email?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Resend email'),
                        style: TextButton.styleFrom(
                          primary: Colors.green[700],
                          textStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
