import 'package:flutter/material.dart';
import 'package:effendy_bouquet/screens/menu.dart';
import 'package:effendy_bouquet/screens/productentry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Effendy Bouquet',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Ayo mulai berbelanja disini!",
                  textAlign: TextAlign.center, // Center alignment
                  style: TextStyle(
                    fontSize: 15.0, // Font size 15
                    color: Colors.white, // White color
                    fontWeight: FontWeight.normal, // Normal weight
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text('Tambah Produk'),
            // Bagian redirection ke ProductEntryFormPage
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductEntryFormPage(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}