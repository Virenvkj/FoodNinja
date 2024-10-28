import 'package:flutter/material.dart';
import 'package:foodninja/core/CommonWidget/button_widget.dart';
import 'package:foodninja/core/constant/extension.dart';
import 'package:foodninja/core/constant/theme_color.dart';

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
            Image.asset(imageUrl,
                width: context.width(context) * 0.14,
                height: context.height(context) * 0.08),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.titleLarge),
                  Text('\$$price',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.w700,color: ThemeColor.mainColor)),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(icon: const Icon(Icons.remove), onPressed: () {}),
                 Text('1',style: Theme.of(context).textTheme.bodyMedium),
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
