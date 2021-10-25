import 'package:flutter/material.dart';

class enterPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Enter phone number to top up',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
