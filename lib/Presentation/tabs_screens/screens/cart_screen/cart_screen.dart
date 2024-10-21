import 'package:flutter/material.dart';
import 'payment_screen/payment_screen.dart';
import 'cart_widgets.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // Sample cart items
  final List<Map<String, String>> cartItems = [
    {
      'title': 'Burger With Meat',
      'price': '12,230',
      'imageUrl': 'assets/profile_screen/burger.png',
    },
    {
      'title': 'Ordinary Burgers',
      'price': '12,230',
      'imageUrl': 'assets/profile_screen/burger.png',
    },
    {
      'title': 'Ordinary Burgers',
      'price': '12,230',
      'imageUrl': 'assets/profile_screen/burger.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Delivery Location Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Delivery Location', style: TextStyle(color: Colors.grey)),
                  Text('Home', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Change Location'),
              ),
            ],
          ),
          const SizedBox(height: 10),

          // Promo Code Section
          Row(
            children: [
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Promo Code...',
                    prefixIcon: Icon(Icons.discount_outlined),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Apply'),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Cart Items Section
          ...cartItems.map((item) => CartWidgets.buildCartItem(
              item['title']!, item['price']!, item['imageUrl']!)),

          const SizedBox(height: 20),

          // Payment Summary Section
          Card(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Payment Summary',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  CartWidgets.buildSummaryRow('Total Items (3)', '\$48,900'),
                  CartWidgets.buildSummaryRow('Delivery Fee', 'Free'),
                 CartWidgets.buildSummaryRow('Discount', '-\$10,900', isDiscount: true),
                  const Divider(),
                  CartWidgets.buildSummaryRow('Total', '\$38,000', isTotal: true),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Order Now Button
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const PaymentScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange, // Set the button color to orange
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              'Order Now',
              style: TextStyle(fontSize: 18, color: Colors.white), // Text color white
            ),
          ),
        ],
      ),
    );
  }
}
