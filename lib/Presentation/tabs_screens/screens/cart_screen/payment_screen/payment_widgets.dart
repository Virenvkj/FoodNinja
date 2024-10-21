import 'package:flutter/material.dart';

class PaymentWidgets {
  static Widget buildOrderedItem() {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'assets/profile_screen/burger.png', 
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 10),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Burger With Meat',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Text('\$12,230', style: TextStyle(color: Colors.orange)),
            ],
          ),
        ),
        const Text('14 items', style: TextStyle(color: Colors.grey)),
      ],
    );
  }

static  Widget buildTransactionDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Details Transaction',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        buildTransactionRow('Cherry Healthy', '\$180.000'),
        buildTransactionRow('Driver', '\$50.000'),
        buildTransactionRow('Tax 10%', '\$80.390'),
        buildTransactionRow('Total Price', '\$100.000', isTotal: true),
      ],
    );
  }

 static Widget buildTransactionRow(String label, String value,
      {bool isTotal = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(fontSize: 16)),
        Text(value,
            style: TextStyle(
                fontSize: 16, color: isTotal ? Colors.orange : Colors.black)),
      ],
    );
  }

 static Widget buildDeliveryDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Deliver to :',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        buildDeliveryRow('Name', 'Albert Stevano'),
        buildDeliveryRow('Phone No.', '+12 8347 2838 28'),
        buildDeliveryRow('Address', 'New York'),
        buildDeliveryRow('House No.', 'BC54 Berlin'),
        buildDeliveryRow('City', 'New York City'),
      ],
    );
  }

 static Widget buildDeliveryRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(fontSize: 16, color: Colors.grey)),
        Text(value, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}