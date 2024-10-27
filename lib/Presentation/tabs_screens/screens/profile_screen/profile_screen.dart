import 'package:flutter/material.dart';
import 'profile_widgets.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            pinned: true,
            title: const Text('Profile Settings'), // Profile Settings in title
            centerTitle: true, // Keep title centered
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Profile Image
                  const SizedBox(height: 100),
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('assets/chat_screen/chatProfile.png'),
                  ),
                  const SizedBox(height: 10),
                  // Name and Email
                  const Text(
                    'Elisia Justin',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'elisiajustin@gmail.com',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ProfileWidgets.buildOrderCard(),
                ProfileWidgets.buildProfileOptions(context),
                ProfileWidgets.buildSupportOptions(),
                ProfileWidgets.buildSignOutButton(),
                const SizedBox(
                  height: 200,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

 
}
