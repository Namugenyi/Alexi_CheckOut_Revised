import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 200.0,
          decoration: BoxDecoration(color: Colors.green[700]
              // gradient: LinearGradient(
              //     begin: Alignment.topLeft,
              //     end: Alignment.topRight,
              //     colors: [Colors.green[100], Colors.green[700]]),
              ),
          child: Column(children: [
            Center(
              child: Text(
                'Alexi Wallet Balance',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ]),
        ),
        Expanded(
          child: Container(
            color: Colors.grey[200],
            child: Center(),
          ),
        )
      ],
    );
  }
}
