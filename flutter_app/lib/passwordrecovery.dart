import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// void main() {
//   runApp(
//       login()
//   );
// }
//This code enables one to set their new password
//User needs to enter new password & re-enter it for confirmation
class passwordRecovery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove banner from top of screen
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green[700],
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/login');
            },
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
                    margin: EdgeInsets.only(top: 150.0),
                    child: Text(
                      'Reset Password',
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
                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                          decoration: InputDecoration(
                            // focusedBorder: OutlineInputBorder(
                            //   borderRadius:
                            //       BorderRadius.all(Radius.circular(25.0)),
                            // ),
                            border: InputBorder.none,
                            hintText: 'Enter Password',
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Confirm Password',
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35.0,
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
                      'Reset',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/resetPassword');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
