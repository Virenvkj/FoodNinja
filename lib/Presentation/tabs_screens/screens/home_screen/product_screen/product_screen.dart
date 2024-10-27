import 'package:flutter/material.dart';
import 'product_widgets.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            pinned: true,
            title: const Text(
              "About This Menu",
              style: TextStyle(color: Colors.white),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/profile_screen/burger.png', // Your image URL
                fit: BoxFit.cover,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Burger With Meat 🍔",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    "\$12,230",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                  SizedBox(height: 8.0),

                  Row(
                    children: [
                      Icon(Icons.attach_money, color: Colors.orange),
                      SizedBox(width: 5),
                      Text("Free Delivery"),
                      SizedBox(width: 20),
                      Icon(Icons.timer, color: Colors.orange),
                      SizedBox(width: 5),
                      Text("20 - 30 min"),
                      SizedBox(width: 20),
                      Icon(Icons.star, color: Colors.orange),
                      SizedBox(width: 5),
                      Text("4.5"),
                    ],
                  ),
                  Divider(),
                  Text(
                    "Description",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "Burger With Meat is a typical food from our restaurant that is much in demand by many people, this is very recommended for you.",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16.0),

                  // Replacing the recommended section and add to cart button
                  ProductsWidgets(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
