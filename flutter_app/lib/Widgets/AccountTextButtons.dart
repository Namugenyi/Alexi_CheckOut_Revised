import 'package:flutter/material.dart';

class AccountTextButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[400]!.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.green[700],
                    ),
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Padding(
                      padding: EdgeInsets.only(left: 180.0),
                      child: Icon(
                        Icons.chevron_right,
                        size: 35,
                        color: Colors.green[700],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[400]!.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.settings_outlined,
                      size: 35,
                      color: Colors.green[700],
                    ),
                  ),
                  Text(
                    'Settings & Privacy',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Padding(
                      padding: EdgeInsets.only(left: 70.0),
                      child: Icon(
                        Icons.chevron_right,
                        size: 35,
                        color: Colors.green[700],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[400]!.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.notifications_outlined,
                      size: 30,
                      color: Colors.green[700],
                    ),
                  ),
                  Text(
                    'Notifications',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Padding(
                      padding: EdgeInsets.only(left: 125.0),
                      child: Icon(
                        Icons.chevron_right,
                        size: 35,
                        color: Colors.green[700],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[400]!.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.help,
                      size: 30,
                      color: Colors.green[700],
                    ),
                  ),
                  Text(
                    'Help & Support',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Padding(
                      padding: EdgeInsets.only(left: 105.0),
                      child: Icon(
                        Icons.chevron_right,
                        size: 35,
                        color: Colors.green[700],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[400]!.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.logout,
                      size: 30,
                      color: Colors.green[700],
                    ),
                  ),
                  Text(
                    'Logout',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Padding(
                      padding: EdgeInsets.only(left: 180.0),
                      child: Icon(
                        Icons.chevron_right,
                        size: 35,
                        color: Colors.green[700],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}