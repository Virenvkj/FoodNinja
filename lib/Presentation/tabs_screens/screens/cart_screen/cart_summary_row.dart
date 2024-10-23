import 'package:flutter/material.dart';

class CartSummaryRow extends StatelessWidget {
  const CartSummaryRow({
    super.key,
    required this.label,
    required this.value,
    this.isTotal = false,
    this.isDiscount = false,
  });

  final String label;
  final String value;
  final bool isTotal;
  final bool isDiscount;

  @override
  Widget build(BuildContext context) {
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
