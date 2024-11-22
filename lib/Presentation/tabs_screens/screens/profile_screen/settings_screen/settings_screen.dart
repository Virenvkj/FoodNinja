import 'package:flutter/material.dart';
import 'package:foodninja/Presentation/tabs_screens/screens/profile_screen/settings_screen/language_selector.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool pushNotificationEnabled = false;
  bool locationEnabled = true;
  String selectedLanguage = 'English (US)';

  void _showLanguageSelector() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return LanguageSelector(
          selectedLanguage: selectedLanguage,
          onLanguageSelected: (language) {
            setState(() {
              selectedLanguage = language;
            });
            Navigator.pop(context);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1.0,
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Push Notification'),
            trailing: Switch(
              value: pushNotificationEnabled,
              onChanged: (value) {
                setState(() {
                  pushNotificationEnabled = value;
                });
              },
              activeColor: Colors.white,
              activeTrackColor: Colors.orangeAccent,
            ),
          ),
          ListTile(
            title: const Text('Location'),
            trailing: Switch(
              value: locationEnabled,
              onChanged: (value) {
                setState(() {
                  locationEnabled = value;
                });
              },
              activeColor: Colors.white,
              activeTrackColor: Colors.orangeAccent,
            ),
          ),
          ListTile(
            title: const Text('Language'),
            trailing: const Icon(Icons.chevron_right),
            subtitle: Text(selectedLanguage),
            onTap: _showLanguageSelector,
          ),
          const Divider(),
          ListTile(
            title: const Text('About Ticketis'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
            },
          ),
          ListTile(
            title: const Text('Privacy Policy'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
            },
          ),
          ListTile(
            title: const Text('Terms and Conditions'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}
