// import 'package:bottom_navy_bar/bottom_navy_bar.dart';
// import 'package:flutter/material.dart';
//
// class MyNevBar extends StatefulWidget {
//   @override
//   _MyNevBarState createState() => _MyNevBarState();
// }
//
// class _MyNevBarState extends State<MyNevBar> {
//   int currentIndex = 0;
//
//   List listOfColors = [
//     Container(
//       color: Colors.blueAccent,
//     ),
//     Container(
//       color: Colors.redAccent,
//     ),
//     Container(
//       color: Colors.orangeAccent,
//     ),
//     Container(
//       color: Colors.cyanAccent,
//     )
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: listOfColors[currentIndex],
//         items: <BottomNavyBarItem>[
//           BottomNavyBarItem(
//             icon: Icon(Icons.home),
//             title: Text('Home'),
//           ),
//           BottomNavyBarItem(
//             icon: Icon(Icons.circle_notifications),
//             title: Text('Notification'),
//           ),
//           BottomNavyBarItem(
//             icon: Icon(Icons.message),
//             title: Text('Chat'),
//           ),
//           BottomNavyBarItem(
//             icon: Icon(Icons.person),
//             title: Text('Profile'),
//             activeColor: Colors.blueAccent,
//             inactiveColor: Colors.lightGreenAccent,
//           ),
//         ],
//       ),
//     );
//   }
// }
