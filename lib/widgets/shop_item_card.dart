import 'package:flutter/material.dart';
import 'package:thingamabob/pages/itemdetails.dart';

//nagseset ng info for item detailes
//stack overflow ftw

class ShopItemCard extends StatelessWidget {
  final String name;
  final String price;
  final String description;
  final String imagePath;
  final String rating;
  final String review;
  final String stock;
  final VoidCallback addToCartCallback;

  ShopItemCard({
    required this.name,
    required this.price,
    required this.description,
    required this.imagePath,
    required this.rating,
    required this.review,
    required this.stock,
    required this.addToCartCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.asset(
          imagePath,
          width: 48.0,
          height: 48.0,
        ),
        title: Text(name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Price: $price'),
            Text('Description: $description'),
          ],
        ),
        trailing: ElevatedButton(
          onPressed: () {
            addToCartCallback();
          },
          child: Text('Add to Cart'),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ItemDetailsPage(
                name: name,
                price: price,
                description: description,
                imagePath: imagePath,
                rating: rating,
                stock: stock,
                review: review,
              ),
            ),
          );
        },
      ),
    );
  }
}
