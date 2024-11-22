import 'package:flutter/material.dart';

class RecentOrder extends StatelessWidget {
  const RecentOrder(
      {super.key,
      required this.title,
      required this.rating,
      required this.distance});

  final String title;
  final String rating;
  final String distance;

  @override
  Widget build(BuildContext context) {
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
                image: AssetImage('assets/profile_screen/burger.png'),
                // Example image, replace with actual asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleLarge),
              Text('Burger Restaurant',   style: Theme.of(context).textTheme.bodyMedium),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.orange, size: 16),
                  const SizedBox(width: 4),
                  Text(rating,style: Theme.of(context).textTheme.bodyMedium),
                  const SizedBox(width: 16),
                  const Icon(Icons.location_on, color: Colors.orange, size: 16),
                  const SizedBox(width: 4),
                  Text(distance,   style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
