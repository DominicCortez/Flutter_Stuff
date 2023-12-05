import 'package:flutter/material.dart';
import 'package:thingamabob/widgets/shop_item_card.dart';
import 'package:thingamabob/pages/cart_page.dart';

//for pc stuff page yung sa may navbar bot. Padagdag ng items tapos per item maglalagay ng sariling image sa assets folder
// pag naglahat ng image sa assets folder please paklicheck kung tama na png or jpeg na file format
//also after inserting image go to pubspec.yaml | then ctrl+f assets: | then pakigaya nalang ng format ng mga ginawa ko don

class PCPartsPage extends StatelessWidget {
  void _addToCart(
      BuildContext context, String name, String price, String imagePath) {
    CartPage.addItemToCart(name, price, imagePath);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$name added to the cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PC Parts Shop'),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          ShopItemCard(
            name: 'GPU mong magaling',
            price: '\$50',
            description: 'Malupit na GPU',
            imagePath: 'assets/hamburger.png',
            rating: '8/10',
            stock: '10',
            review: 'meh',
            addToCartCallback: () {
              _addToCart(
                  context, 'GPU mong magaling', '\$50', 'assets/hamburger.png');
            },
          ),
          ShopItemCard(
            name: 'CPU mong magaling',
            price: '\$30',
            description: 'CPU na malupit',
            imagePath: 'assets/hamburger.png',
            rating: '8/10',
            stock: '10',
            review: 'meh',
            addToCartCallback: () {
              _addToCart(
                  context, 'CPU mong magaling', '\$30', 'assets/hamburger.png');
            },
          ),
          ShopItemCard(
            name: 'Fans na mabilis',
            price: '\$20',
            description: 'napagkabilis',
            imagePath: 'assets/hamburger.png',
            rating: '8/10',
            stock: '10',
            review: 'meh',
            addToCartCallback: () {
              _addToCart(
                  context, 'Fans na mabilis', '\$20', 'assets/hamburger.png');
            },
          ),
          // dito lagay items copy the format
        ],
      ),
    );
  }
}
