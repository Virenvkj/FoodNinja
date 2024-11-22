import 'package:flutter/material.dart';

class LanguageSelector extends StatelessWidget {
  final String selectedLanguage;
  final Function(String) onLanguageSelected;

  const LanguageSelector(
      {super.key,
      required this.selectedLanguage,
      required this.onLanguageSelected});

  @override
  Widget build(BuildContext context) {
    final List<String> languages = [
      'Indonesia',
      'English (US)',
      'Thailand',
      'Chinese'
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Select Language',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ...languages.map((language) {
            return ListTile(
              leading: Radio<String>(
                value: language,
                groupValue: selectedLanguage,
                onChanged: (String? value) {
                  if (value != null) {
                    onLanguageSelected(value);
                  }
                },
              ),
              title: Text(language),
              onTap: () {
                onLanguageSelected(language);
              },
            );
          }),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); 
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            ),
            child: const Text(
              'Select',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}