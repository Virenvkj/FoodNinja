import 'package:flutter/material.dart';

import 'payment_widgets.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            const Text(
              'You deserve better meal',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            const Text(
              'Item Ordered',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            PaymentWidgets.buildOrderedItem(),
            const SizedBox(height: 20),
            PaymentWidgets.buildTransactionDetails(),
            const SizedBox(height: 20),
            PaymentWidgets.buildDeliveryDetails(),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Text('Checkout Now', style: TextStyle(fontSize: 18,color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }

  
}
