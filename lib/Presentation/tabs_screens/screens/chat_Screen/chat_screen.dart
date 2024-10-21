import 'package:flutter/material.dart';

import 'chat_widgets.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true, // Allows the app bar to float when scrolling
            pinned: true, // Sticks the title when scrolling
            expandedHeight: 120.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Chat List'),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/chat_screen/chat_background.png',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.white.withOpacity(0.7),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'All Messages',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ChatListItem(
                  name: "Elisia Justin",
                  message: "Your Order Just Arrived!",
                  time: "13:47",
                  isSeen: index % 4 == 0,
                  hasNotification: index % 3 == 0,
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
