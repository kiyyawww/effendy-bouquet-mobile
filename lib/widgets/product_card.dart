import 'package:flutter/material.dart';
import 'package:effendy_bouquet/screens/productentry_form.dart';
// import 'package:effendy_bouquet/screens/menu.dart';

class ItemHomepage {
  final String name;
  final IconData icon;

  ItemHomepage(this.name, this.icon);
}

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      // Set the card's background color to yellow.
      color: Colors.yellow,
      borderRadius: BorderRadius.circular(12),

      child: InkWell(
        onTap: () {
          // Display a SnackBar when clicked.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
              content: Text(
                "Kamu telah menekan tombol ${item.name}!",
                style: const TextStyle(color: Colors.white), // white text color
              ),
              backgroundColor: Colors.orange, // Orange background color for SnackBar
            ));
          // Navigate to the appropriate route
          if (item.name == "Tambah Produk") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductEntryFormPage(),
              ),
            );
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.orange, // Set icon color to orange
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.orange), // Set text color to orange
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
