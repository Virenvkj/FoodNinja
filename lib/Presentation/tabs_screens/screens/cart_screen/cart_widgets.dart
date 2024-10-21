import 'package:flutter/material.dart';

class CartWidgets {
  // Cart Item Widget
  static Widget buildCartItem(String title, String price, String imageUrl) {
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
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text('\$$price', style: const TextStyle(color: Colors.orange)),
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

  // Summary Row Widget
  static Widget buildSummaryRow(String label, String value,
      {bool isDiscount = false, bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: TextStyle(
                color: isTotal ? Colors.black : Colors.grey,
                fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              )),
          Text(value,
              style: TextStyle(
                color: isDiscount ? Colors.red : Colors.black,
                fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
                fontSize: isTotal ? 18 : 16,
              )),
        ],
      ),
    );
  }
}
