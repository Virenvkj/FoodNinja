import 'package:flutter/material.dart';

class SearchWidgets {

  // Function to build category button with icon and text
 static Widget buildCategoryButton(String label, IconData icon) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.orange.shade100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: Colors.orange, size: 28),
        ),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }

  // Function to build recent searches row
static  Widget buildRecentSearch(String search) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          const Icon(Icons.search, color: Colors.grey),
          const SizedBox(width: 8),
          Expanded(child: Text(search)),
          const Icon(Icons.close, color: Colors.grey),
        ],
      ),
    );
  }

  // Function to build recent orders
 static  Widget buildRecentOrder(String title, String rating, String distance) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: AssetImage(
                    'assets/profile_screen/burger.png'), // Example image, replace with actual asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              const Text('Burger Restaurant'),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.orange, size: 16),
                  const SizedBox(width: 4),
                  Text(rating),
                  const SizedBox(width: 16),
                  const Icon(Icons.location_on, color: Colors.orange, size: 16),
                  const SizedBox(width: 4),
                  Text(distance),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}