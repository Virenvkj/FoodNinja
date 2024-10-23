
import 'package:flutter/material.dart';

import '../../cart_screen/cart_screen.dart';

class ProductsWidgets extends StatelessWidget {
  const ProductsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Recommended Section
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Recommended For You",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "See All",
                style: TextStyle(color: Colors.orange),
              ),
            ),
          ],
        ),
        // Recommended Items Horizontal List
        SizedBox(
          height: 120.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              RecommendedItem(imagePath: 'assets/profile_screen/burger.png'),
              RecommendedItem(imagePath: 'assets/profile_screen/burger.png'),
              RecommendedItem(imagePath: 'assets/profile_screen/burger.png'),
              RecommendedItem(imagePath: 'assets/profile_screen/burger.png'),
              RecommendedItem(imagePath: 'assets/profile_screen/burger.png'),
            ],
          ),
        ),
        const SizedBox(height: 16.0),

        // Quantity Selector and Add to Cart Button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_circle_outline),
                ),
                const Text("4"),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_circle_outline),
                ),
              ],
            ),
            // Add to Cart Button
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CartScreen()));
              },
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              label: const Text(
                "Add to Cart",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
                backgroundColor: Colors.orange,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class RecommendedItem extends StatelessWidget {
  final String imagePath;

  const RecommendedItem({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      width: 100.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
