import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final bool isSeen;
  final bool hasNotification;

  const ChatListItem({super.key, 
    required this.name,
    required this.message,
    required this.time,
    this.isSeen = false,
    this.hasNotification = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0, left: 12, bottom: 6),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(
              255, 255, 255, 255), // Set the background color
          borderRadius: BorderRadius.circular(8), // Adjust the radius as needed
        ),
        child: ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/chat_screen/chatProfile.png'),
          ),
          title: Text(name),
          subtitle: Text(message),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(time),
              if (hasNotification)
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                  ),
                  child: const Text('3', style: TextStyle(color: Colors.white)),
                ),
              if (isSeen) const Icon(Icons.check, color: Colors.orange),
            ],
          ),
        ),
      ),
    );
  }
}
