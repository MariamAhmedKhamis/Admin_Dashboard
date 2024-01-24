import 'package:flutter/material.dart';

class AdminStoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Store'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Store Overview',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            StoreItem(
              itemName: 'Product 1',
              itemPrice: '\$20.99',
              itemImage: 'assets/product1.jpg',
            ),
            StoreItem(
              itemName: 'Product 2',
              itemPrice: '\$15.99',
              itemImage: 'assets/product2.jpg',
            ),
            StoreItem(
              itemName: 'Product 3',
              itemPrice: '\$30.49',
              itemImage: 'assets/product3.jpg',
            ),
            // Add more StoreItems as needed
          ],
        ),
      ),
    );
  }
}

class StoreItem extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String itemImage;

  const StoreItem({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.itemImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            itemImage,
            width: double.infinity,
            height: 150,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Price: $itemPrice',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}