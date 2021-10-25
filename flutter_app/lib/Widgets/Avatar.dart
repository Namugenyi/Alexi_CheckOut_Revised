import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
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
          child: Row(children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 65.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                radius: 45.0,
                child: Text(
                  'CN',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.green),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
              child: Column(
                children: [
                  Text(
                    'Christine Namugenyi',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'cnamugenyi08@gmail.com',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ],
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
