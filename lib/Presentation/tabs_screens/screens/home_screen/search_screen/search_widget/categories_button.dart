import 'package:flutter/material.dart';

class CategoriesBotton extends StatelessWidget {
  const CategoriesBotton({super.key});

  final String label;
  final Ico

  @override
  Widget build(BuildContext context) {
    return  Column(
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
}
