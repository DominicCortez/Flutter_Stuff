import 'package:flutter/material.dart';

//ito yung pag may gusto ka icheck na items formatting and design problema dito

class ItemDetailsPage extends StatelessWidget {
  final String name;
  final String price;
  final String description;
  final String imagePath;
  final String rating;
  final String review;
  final String stock;

  ItemDetailsPage({
    required this.name,
    required this.price,
    required this.description,
    required this.imagePath,
    required this.rating,
    required this.review,
    required this.stock,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            width: double.infinity,
            height: 200.0,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name: $name'),
                Text('Price: $price'),
                Text('Description: $description'),
                Text('Rating: $rating'),
                Text('Stock: $stock'),
                Text('Review: $review'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
