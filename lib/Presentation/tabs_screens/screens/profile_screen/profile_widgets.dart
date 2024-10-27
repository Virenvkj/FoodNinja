import 'package:flutter/material.dart';
import 'settings_screen/settings_screen.dart';

class ProfileWidgets {
  static Widget buildOrderCard() {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('My Orders', style: TextStyle(fontSize: 18)),
                TextButton(onPressed: () {}, child: const Text('See All')),
              ],
            ),
            const Divider(),
            ListTile(
              leading:
                  Image.asset('assets/profile_screen/burger.png', width: 50),
              title: const Text('Burger With Meat'),
              subtitle: const Text('14 items'),
              trailing: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('\$12,230'),
                  Text('In Delivery', style: TextStyle(color: Colors.orange)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget buildProfileOptions(BuildContext context) { // Pass context here
    return Column(
      children: [
        const ListTile(
          leading: Icon(Icons.person),
          title: Text('Personal Data'),
          trailing: Icon(Icons.chevron_right),
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Settings'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const SettingsScreen()),
            );
          },
        ),
        const ListTile(
          leading: Icon(Icons.credit_card),
          title: Text('Extra Card'),
          trailing: Icon(Icons.chevron_right),
        ),
      ],
    );
  }

  static Widget buildSupportOptions() {
    return const Column(
      children: [
        ListTile(
          leading: Icon(Icons.help_outline),
          title: Text('Help Center'),
          trailing: Icon(Icons.chevron_right),
        ),
        ListTile(
          leading: Icon(Icons.delete_outline),
          title: Text('Request Account Deletion'),
          trailing: Icon(Icons.chevron_right),
        ),
        ListTile(
          leading: Icon(Icons.add),
          title: Text('Add another account'),
          trailing: Icon(Icons.chevron_right),
        ),
      ],
    );
  }

  static Widget buildSignOutButton() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.red),
          padding: const EdgeInsets.symmetric(vertical: 16.0),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.logout),
            SizedBox(width: 8),
            Text('Sign Out'),
          ],
        ),
      ),
    );
  }
}
