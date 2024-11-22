import 'package:flutter/material.dart';

class RecentSearchData extends StatelessWidget {
  const RecentSearchData({super.key, required this.recentSearch});

  final String recentSearch;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          const Icon(Icons.search, color: Colors.grey),
          const SizedBox(width: 8),
          Expanded(child: Text(recentSearch,style: Theme.of(context).textTheme.bodyLarge,)),
          const Icon(Icons.close, color: Colors.grey),
        ],
      ),
    );
  }
}
