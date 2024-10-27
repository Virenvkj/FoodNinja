import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
  });

  final String title;
  final String price;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Checkbox(value: true, onChanged: (val) {}),
            Image.asset(imageUrl, width: 60, height: 60),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text('\$$price',
                      style: const TextStyle(color: Colors.orange)),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(icon: const Icon(Icons.remove), onPressed: () {}),
                const Text('1'),
                IconButton(icon: const Icon(Icons.add), onPressed: () {}),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
