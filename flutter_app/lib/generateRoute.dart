import 'package:flutter/material.dart';
import 'package:flutter_app/CardPayment.dart';
import 'package:flutter_app/Shop.dart';
import 'package:flutter_app/TopUpWallet.dart';
import 'package:flutter_app/Widgets/ShopCategory.dart';
import 'package:flutter_app/passwordrecovery.dart';
import 'package:flutter_app/resetpassword.dart';
import 'package:flutter_app/signUp.dart';

import 'checkmail.dart';
import 'homePage.dart';
import 'mainPage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MainHomeScreen());

      case '/homePage':
        return MaterialPageRoute(builder: (_) => homePage());

      case '/topUpWallet':
        return MaterialPageRoute(builder: (_) => TopUpWalletPage());

      // case '/login':
      //   return MaterialPageRoute(builder: (_) => login());

      case '/signUp':
        return MaterialPageRoute(builder: (_) => signUp());

      case '/passwordRecovery':
        return MaterialPageRoute(builder: (_) => passwordRecovery());

      case '/resetPassword':
        return MaterialPageRoute(builder: (_) => resetPassword());

      case '/checkMail':
        return MaterialPageRoute(builder: (_) => checkmail());

      // case '/barcodeScanner':
      //   return MaterialPageRoute(builder: (_) => ScanBarcode());

      case '/CardPayment':
        return MaterialPageRoute(builder: (_) => CardPayment());

      case '/Shop':
        return MaterialPageRoute(builder: (_) => ScanBarcode());

      case '/ShopCategory':
        return MaterialPageRoute(builder: (_) => ShopCategory());

        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
