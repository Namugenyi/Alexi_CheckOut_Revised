import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// void main() {
//   runApp(
//       login()
//   );
// }
class login extends StatelessWidget {
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
                  height: 120.0,
                  width: 120,
                  //padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                  child: Image(
                    image: AssetImage('images/ALEXI_LOGO_PNG.png'),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  // height:100.0,
                  // width:120.0,
                  margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 45.0),
                  child: Text(
                    'Sign In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'PoppinsBold',
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email or Phone number',
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
                    borderRadius: BorderRadius.circular(10),
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
                            hintText: 'Password',
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: [
                      //     IconButton(
                      //         onPressed: () {},
                      //         icon: Icon(
                      //           Icons.arrow_forward_ios,
                      //         ))
                      //   ],
                      // ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        //margin: EdgeInsets.only(right: 10.0),
                        child: rememberMe(),
                      ),
                    ),
                    Text(
                      'Remember Me',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),

                //
                //   TextButton(
                //     // Route to Select Store Screen
                //     onPressed: () {},
                //     style: TextButton.styleFrom(
                //       primary: Colors.green,
                //       textStyle: TextStyle(
                //         fontFamily: 'Poppins',
                //         fontSize: 15.0,
                //       ),
                //     ),
                //   ),
                //
                Container(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green[700],
                      onPrimary: Colors.white,
                    ),
                    child: Text(
                      'Login',
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
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Column(
                    children: [
                      TextButton(
                        // Route to Select Store Screen
                        onPressed: () {
                          Navigator.of(context).pushNamed('/passwordRecovery');
                        },
                        child: Text('Forgot Password ?'),
                        style: TextButton.styleFrom(
                          primary: Colors.green[700],
                          textStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Do not have an account ?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15.0,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          TextButton(
                            // Route to Select Store Screen
                            onPressed: () {
                              Navigator.of(context).pushNamed('/signUp');
                            },
                            child: Text('Sign Up'),
                            style: TextButton.styleFrom(
                              primary: Colors.green[700],
                              textStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Divider(
                //   height: 10,
                //   thickness: 5.0,
                //   indent: 20.0,
                //   endIndent: 20.0,
                //   color: Colors.black,
                // ),

                SizedBox(
                  height: 5.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class rememberMe extends StatefulWidget {
  const rememberMe({Key? key}) : super(key: key);
  @override
  _rememberMeState createState() => _rememberMeState();
}

class _rememberMeState extends State<rememberMe> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.green;
      }
      return Colors.green;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

// class input__text extends StatefulWidget {
//   @override
//   State<input__text> createState() => _input__textState();
//   final _textController = TextEditingController();// Editing the textfield
//   void _handleSubmitted (String text){
//     _textController.clear(); // clear text field on submitted
//   }
//
//   Widget _buildTextComposer(){
//     return Container(
//       child: TextField(
//         controller: _textController,
//         onSubmitted: _handleSubmitted,
//         keyboardType: TextInputType.emailAddress,
//         decoration: const InputDecoration(
//           border: OutlineInputBorder(),
//           //labelText: 'Email',
//           hintText: 'Password',
//         ),
//       ),
//     );
//   }
// }
//
// class _input__textState extends State<input__text> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
