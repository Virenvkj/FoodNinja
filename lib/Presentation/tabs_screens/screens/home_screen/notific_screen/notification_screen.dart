import 'package:flutter/material.dart';

import 'notification_widgets.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Today Section
          const Text(
            'Today',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 10),
          NotificationTile(
            icon: Icons.local_offer,
            iconBgColor: Colors.grey.shade300,
            title: '30% Special Discount!',
            subtitle: 'Special promotion only valid today',
            date: 'Recently',
            iconColor: Colors.red,
          ),
          NotificationTile(
            icon: Icons.check_circle,
            iconBgColor: Colors.grey.shade300,
            title: 'Your Order Has Been Taken by the Driver',
            subtitle: 'Recently',
            iconColor: Colors.green,
          ),
          NotificationTile(
            icon: Icons.cancel,
            iconBgColor: Colors.grey.shade300,
            title: 'Your Order Has Been Canceled',
            subtitle: '19 Jun 2023',
            iconColor: Colors.red,
          ),
          
          // Divider between sections
          const Divider(),
          
          // Yesterday Section
          const Text(
            'Yesterday',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 10),
          NotificationTile(
            icon: Icons.email,
            iconBgColor: Colors.grey.shade300,
            title: '32% Special Discount!',
            subtitle: 'Special promotion only valid today',
            iconColor: Colors.blue,
          ),
          NotificationTile(
            icon: Icons.person,
            iconBgColor: Colors.grey.shade300,
            title: 'Account Setup Successful!',
            subtitle: 'Special promotion only valid today',
            iconColor: Colors.purple,
          ),
          NotificationTile(
            icon: Icons.local_offer,
            iconBgColor: Colors.grey.shade300,
            title: 'Special Offer! 40% Off',
            subtitle: 'Special offer for new account, valid until 20 Nov 2022',
            iconColor: Colors.red,
          ),
          NotificationTile(
            icon: Icons.credit_card,
            iconBgColor: Colors.grey.shade300,
            title: 'Credit Card Connected',
            subtitle: 'Special promotion only valid today',
            iconColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}

