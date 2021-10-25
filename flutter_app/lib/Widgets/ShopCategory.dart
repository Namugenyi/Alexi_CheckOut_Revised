import 'package:flutter/material.dart';

class ShopCategory extends StatelessWidget {
  const ShopCategory({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List';
    return Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            //must change into a vertical scroll
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60.0,
                width: 100.0,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: []),
                child: Center(
                  child: Text(
                    'All',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
              Container(
                height: 60.0,
                width: 100.0,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20.0),
                    image: new DecorationImage(
                      image: new ExactAssetImage('images/Grocceries.png'),
                      //fit: BoxFit.cover,
                    )),
                child: Center(
                  child: Text(
                    'Food',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                height: 60.0,
                width: 100.0,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: []),
                child: Center(
                  child: Text(
                    'Expenses',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]));
  }
}
