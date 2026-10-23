import 'package:flutter/material.dart';

void main() {
  runApp(const FlowerMenuApp());
}

class FlowerMenuApp extends StatelessWidget {
  const FlowerMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Blossom Flower Shop',
          style: TextStyle(color: Colors.white, fontFamily: 'Pacifico'),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: const SafeArea(
        child: Column(
          children: [
            MenuCard('daisy.jpg', 'Daisy Bouquet'),
            MenuCard('tulip.jpg', 'Tulip Bouquet'),
            MenuCard('sunflower.jpg', 'Sunflower Basket'),
          ],
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard(this.file, this.name, {super.key});

  final String file;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.pink.shade300,
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/$file',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
