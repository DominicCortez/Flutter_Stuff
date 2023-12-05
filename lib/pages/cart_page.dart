import 'package:flutter/material.dart';
import 'package:thingamabob/widgets/cart_item.dart';
import 'package:thingamabob/pages/checkout_page.dart';

//para to doon sa cart page sa may bottom nav bar.

class CartPage extends StatefulWidget {
  static List<CartItem> cartItems = [];

  @override
  _CartPageState createState() => _CartPageState();

  static void addItemToCart(String name, String price, String imagePath) {
    cartItems.add(CartItem(name: name, price: price, imagePath: imagePath));
  }
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    double totalPrice = CartPage.cartItems.fold(
      0,
      (previousValue, cartItem) =>
          previousValue + double.parse(cartItem.price.substring(1)),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: CartPage.cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(
                    CartPage.cartItems[index].imagePath,
                    width: 48.0,
                    height: 48.0,
                  ),
                  title: Text(CartPage.cartItems[index].name),
                  subtitle: Text('Price: ${CartPage.cartItems[index].price}'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Price: \$${totalPrice.toStringAsFixed(2)}'),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CheckoutPage(totalPrice: totalPrice),
                      ),
                    );
                  },
                  child: Text('Checkout'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
