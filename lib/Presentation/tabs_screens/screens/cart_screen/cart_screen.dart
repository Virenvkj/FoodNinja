import 'package:flutter/material.dart';
import 'package:foodninja/Presentation/tabs_screens/screens/cart_screen/cart_item.dart';
import 'package:foodninja/Presentation/tabs_screens/screens/cart_screen/cart_summary_row.dart';

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
                  Text('Delivery Location',
                      style: TextStyle(color: Colors.grey)),
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
          ...cartItems.map((item) => CartItem(
                title: item['title'] ?? '',
                price: item['price'] ?? '',
                imageUrl: item['imageUrl'] ?? '',
              )),

          const SizedBox(height: 20),

          // Payment Summary Section
          const Card(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Payment Summary',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  CartSummaryRow(
                    label: 'Total Items (3)',
                    value: '\$48,900',
                  ),
                  CartSummaryRow(
                    label: 'Delivery Fee',
                    value: 'Free',
                  ),
                  CartSummaryRow(
                    label: 'Discount',
                    value: '-\$10,900',
                    isDiscount: true,
                  ),
                  Divider(),
                  CartSummaryRow(
                    label: 'Total',
                    value: '\$38,000',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Order Now Button
          ElevatedButton(
            onPressed: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) => const PaymentScreen()),
              // );
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
              style: TextStyle(
                  fontSize: 18, color: Colors.white), // Text color white
            ),
          ),
        ],
      ),
    );
  }
}
