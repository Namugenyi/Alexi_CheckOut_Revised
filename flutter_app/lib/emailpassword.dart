import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(
//       login()
//   );
// }
//This is the page one goes to when they select email as an option to reset password
class emailPassword extends StatelessWidget {
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
                ))),
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
                      'Password Recovery',
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
                    'Enter the email associated with your account and we shall send an email with instructions to reset your password.',
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
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email(Optional)',
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
                      'Send Instructions',
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
