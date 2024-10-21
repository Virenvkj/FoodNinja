import 'package:flutter/material.dart';

import 'search_widgets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Food'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search Food',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.filter_alt_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Category Buttons (Burger, Taco, Drink, Pizza)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SearchWidgets.buildCategoryButton('Burger', Icons.fastfood),
                SearchWidgets.buildCategoryButton('Taco', Icons.local_pizza),
                SearchWidgets.buildCategoryButton('Drink', Icons.local_drink),
                SearchWidgets.buildCategoryButton('Pizza', Icons.local_pizza),
              ],
            ),
            const SizedBox(height: 16),

            // Recent Searches
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent searches',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Delete', style: TextStyle(color: Colors.orange)),
              ],
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView(
                children: [
                  SearchWidgets.buildRecentSearch('Burgers'),
                  SearchWidgets.buildRecentSearch('Fast food'),
                  SearchWidgets.buildRecentSearch('Dessert'),
                  SearchWidgets.buildRecentSearch('French'),
                  SearchWidgets.buildRecentSearch('Pastry'),
                  const SizedBox(height: 16),

                  // My Recent Orders Section
                  const Text('My recent orders',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SearchWidgets.buildRecentOrder('Ordinary Burgers', '4.9', '190m'),
                  SearchWidgets.buildRecentOrder('Ordinary Burgers', '4.9', '190m'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
