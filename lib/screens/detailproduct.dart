import 'package:flutter/material.dart';
import 'package:effendy_bouquet/models/product_entry.dart';

class DetailProductPage extends StatelessWidget {
  final ProductEntry product;

  const DetailProductPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Effendy Bouquet',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.orange, // Set AppBar background color to orange
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView( // Make the entire body scrollable
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.shop, // Icon representing the shop
              size: 100, // Icon size
              color: Colors.deepOrange, // Set icon color to deep orange
            ),
            
            const SizedBox(height: 10),
            Text(
              product.fields.name, 
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                color: Colors.deepOrange, // Set text color to deep orange
              ),
            ),
            const SizedBox(height: 5),
            Text(
              product.fields.quantity.toString(),
              style: const TextStyle(
                fontSize: 18.0,
                fontStyle: FontStyle.italic,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Rp${product.fields.price}", 
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.yellow, // Set price text color to yellow
              ),
            ),
            const SizedBox(height: 10),
            const Text("Description", style: TextStyle(color: Colors.orange)), // Set description title color to orange
            const SizedBox(height: 10),
            Text(
              product.fields.description,
              textAlign: TextAlign.justify,
              style: const TextStyle(color: Colors.blueGrey), // Set description text color to blueGrey
            ),
          ],
        ),
      ),
    );
  }
}