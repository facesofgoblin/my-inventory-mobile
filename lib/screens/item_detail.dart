import 'package:flutter/material.dart';

class ItemDetailPage extends StatelessWidget {
  final String name;
  final int amount;
  final String description;

  const ItemDetailPage({Key? key, required this.name, required this.amount, required this.description}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Items Detail',
            style: TextStyle(color: Colors.white), // Warna teks
          ),
        ),
        backgroundColor: Colors.pink, // Warna latar belakang
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                color: Colors.indigo,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Amount: $amount',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Description: $description',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
