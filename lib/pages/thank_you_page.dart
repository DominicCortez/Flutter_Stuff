import 'package:flutter/material.dart';
import 'package:thingamabob/main.dart';

//thank you for purchasing page sa dulo auto refresh back to home page tapos removed all na dapat ang nasa cart

class ThankYouPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void navigateToMainPage() {
      Future.delayed(Duration(seconds: 4), () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      });
    }

    navigateToMainPage();

    return Scaffold(
      appBar: AppBar(
        title: Text('Thank You'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Thank you for your purchase!',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
