import 'package:flutter/material.dart';

//Select contact details the user wants to use while resetting their password
class resetPassword extends StatelessWidget {
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
            icon: Icon(
              Icons.arrow_back_outlined,
              size: 30,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Container(
                //   child: Row(children: [
                //     Padding(
                //       padding: const EdgeInsets.only(left: 2.0),
                //       child: Container(
                //         //margin: EdgeInsets.only(right: 10.0),
                //         child: IconButton(
                //           onPressed: () {},
                //           icon: Icon(
                //             Icons.chevron_left_rounded,
                //             size: 30,
                //           ),
                //         ),
                //       ),
                //     ),
                //     Text(
                //       'Back',
                //       style: TextStyle(
                //         fontFamily: 'Poppins',
                //         fontSize: 14.0,
                //       ),
                //     ),
                //   ]),
                // ),
                Center(
                  child: Container(
                    height: 110.0,
                    width: 110.0,
                    margin: EdgeInsets.only(top: 130.0),
                    child: Image.asset('images/forgot_password.png'),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Container(
                    //margin: EdgeInsets.only(top: 250.0),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 220.0,
                  child: Text(
                    //'We have made the shopping experience easier than ever.Swipe to learn more',
                    'Select which contact details you would like to reset your password',
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
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.question_answer,
                                color: Colors.green[700],
                                size: 35.0,
                              ),
                            ),
                          ),
                        ),
                        //
                        Container(
                          child: Text(
                            'SMS',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Column(
                      children: [
                        Container(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.email_sharp,
                              color: Colors.green[700],
                              size: 35.0,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Email',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
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
