import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  final IconData icon;
  final Color iconBgColor;
  final String title;
  final String subtitle;
  final String date;
  final Color iconColor;

  const NotificationTile({super.key, 
    required this.icon,
    required this.iconBgColor,
    required this.title,
    required this.subtitle,
    this.date = '',
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
      leading: CircleAvatar(
        backgroundColor: iconBgColor,
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(subtitle),
          if (date.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                date,
                style: TextStyle(color: Colors.grey[600], fontSize: 12),
              ),
            ),
        ],
      ),
    );
  }
}