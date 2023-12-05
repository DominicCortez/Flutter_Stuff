import 'package:flutter/material.dart';
import 'package:thingamabob/pages/cart_page.dart';
import 'package:thingamabob/pages/thank_you_page.dart';

//this for the fluff after pindutin checkout sa cart page. parang confirm price lang to. sinubukan ko idisplay lahat ng items dito but walang point kasi pinapakita rin naman lahat sa cart

class CheckoutPage extends StatelessWidget {
  final double totalPrice;

  CheckoutPage({required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Total Price: \$${totalPrice.toStringAsFixed(2)}'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThankYouPage(),
                  ),
                );
                CartPage.cartItems.clear();
                print('Checkout button pressed');
              },
              child: Text('Confirm and checkout'),
            ),
          ],
        ),
      ),
    );
  }
}
