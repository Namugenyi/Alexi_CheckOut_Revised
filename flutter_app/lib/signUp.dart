import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Widgets/textFields_SignUp.dart';
import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(
//       login()
//   );
// }
class signUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove banner from top of screen
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 90.0,
                  width: 95.0,
                  //padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                  child: Image(
                    image: AssetImage('images/ALEXI_LOGO_PNG.png'),
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Column(
                  children: [
                    //Container(
                    // height:100.0,
                    // width:120.0,
                    //margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 45.0),
                    Text(
                      'Lets Register',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 25.0,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Do you have an account?',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 15.0)),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Log In',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: Colors.green[700],
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0)),
                        ),
                      ],
                    ),
                    //),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                text_Input_SignUp(
                  hint: 'Full Name',
                  inputType: TextInputType.name,
                  inputAction: TextInputAction.next,
                ),
                SizedBox(height: 20.0),
                text_Input_SignUp(
                  hint: 'Email',
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                ),
                SizedBox(height: 20.0),
                text_Input_SignUp(
                  hint: 'Phone Number',
                  inputType: TextInputType.phone,
                  inputAction: TextInputAction.next,
                ),
                SizedBox(height: 20.0),
                text_Input_SignUp(
                  hint: 'Password',
                  inputType: TextInputType.visiblePassword,
                  inputAction: TextInputAction.next,
                ),
                SizedBox(height: 20.0),
                text_Input_SignUp(
                  hint: 'Re-enter Password',
                  inputType: TextInputType.visiblePassword,
                  inputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 20.0,
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
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {},
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
