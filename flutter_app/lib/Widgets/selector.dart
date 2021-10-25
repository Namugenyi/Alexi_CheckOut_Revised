import 'package:flutter/material.dart';

class CatSelector extends StatefulWidget {
  @override
  _CatSelectorState createState() => _CatSelectorState();
}

class _CatSelectorState extends State<CatSelector> {
  int selectedIndex = 0;
  final List<String> categories = [
    'Login',
    'SignUp',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Colors.green[700],
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    color:
                        index == selectedIndex ? Colors.white : Colors.white60,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
