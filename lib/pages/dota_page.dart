import 'package:flutter/material.dart';
import 'package:thingamabob/widgets/shop_item_card.dart';
import 'package:thingamabob/pages/cart_page.dart';

//for dota items page yung sa may navbar bot. Padagdag ng items tapos per item maglalagay ng sariling image sa assets folder
// pag naglahat ng image sa assets folder please paklicheck kung tama na png or jpeg na file format
//also after inserting image go to pubspec.yaml | then ctrl+f assets: | then pakigaya nalang ng format ng mga ginawa ko don

class DotaPage extends StatelessWidget {
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
        title: Text('Dota Shop'),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          ShopItemCard(
            name: 'Spada ni dk',
            price: '\$25',
            description: 'danglake',
            imagePath: 'assets/hamburger.png',
            rating: '8/10',
            stock: '10',
            review: 'meh',
            addToCartCallback: () {
              _addToCart(
                  context, 'Spada ni dk', '\$25', 'assets/hamburger.png');
            },
          ),
          ShopItemCard(
            name: 'betlog ni james',
            price: '\$30',
            description: 'dangbigat',
            imagePath: 'assets/hamburger.png',
            rating: '8/10',
            stock: '10',
            review: 'meh',
            addToCartCallback: () {
              _addToCart(
                  context, 'betlog ni james', '\$30', 'assets/hamburger.png');
            },
          ),
          ShopItemCard(
            name: 'Pating ni islark',
            price: '\$20',
            description: 'danglansa',
            imagePath: 'assets/hamburger.png',
            rating: '8/10',
            stock: '10',
            review: 'meh',
            addToCartCallback: () {
              _addToCart(
                  context, 'Pating ni islark', '\$20', 'assets/hamburger.png');
            },
          ),
          // Dito magdadagdag ng items kopyahin nyo nalang format sa taas
        ],
      ),
    );
  }
}
