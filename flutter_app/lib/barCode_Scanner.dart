import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


// Bar code scan page
class ScanBarcode extends StatefulWidget {
  const ScanBarcode({Key? key}) : super(key: key);

  @override
  _ScanBarcodeState createState() => _ScanBarcodeState();
}

class _ScanBarcodeState extends State<ScanBarcode> {
  String? scanResult;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove banner from top of screen

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[700],
          title: Text('Scan Barcode'),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.arrow_back_outlined,
                size: 30,
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              IconButton(
                onPressed: () {
                  scanBarCode;
                },
                icon: Icon(
                  Icons.qr_code_2,
                  size: 50,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                scanResult == null ? 'Scan code' : '$scanResult',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future scanBarCode() async {
    String scanResult;
    try {
      scanResult = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666', // Color of Scan Line
        'Cancel',
        true, //show flash or not
        ScanMode.BARCODE,
      );
    } on PlatformException {
      scanResult = 'Barcode Scan failed, check platform version';
    }
    if (!mounted) return;

    setState(() => this.scanResult = scanResult);
  }
}
