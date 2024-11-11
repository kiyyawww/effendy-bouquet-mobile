import 'package:flutter/material.dart';
import 'package:effendy_bouquet/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Effendy Bouquet',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.orange, // Set primary color to orange
        ).copyWith(
          secondary: Colors.yellow, // Set secondary color to yellow
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
