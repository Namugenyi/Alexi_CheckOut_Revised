import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  _MainHomeScreenState createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove banner from top of screen
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 150.0,
                  width: 150.0,
                  margin: EdgeInsets.only(top: 130.0),
                  child: Image.asset('images/ALEXI_LOGO_PNG.png'),
                ),
              ),
              Container(
                // height:100.0,
                // width:120.0,
                margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 20.0),
                child: Text(
                  'Scan.Shop.Go.',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                    color: Colors.white,
                  )),
                ),
              ),
              Container(
                width: 250.0,
                child: Text(
                  //'We have made the shopping experience easier than ever.Swipe to learn more',
                  'It is now very easy to scan and checkout your favourite products at your nearest store',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      //fontStyle: FontStyle.normal,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      //fontWeight: FontWeight.w700,
                      //fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                ),
              ),
              SizedBox(
                height: 160.0,
              ),
              Ink(
                decoration:
                    ShapeDecoration(color: Colors.white, shape: CircleBorder()),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/homePage');
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.green,
                  ),
                  tooltip: 'Skip',
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Skip',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
