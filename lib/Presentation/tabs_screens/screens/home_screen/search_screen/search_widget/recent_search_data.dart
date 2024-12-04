import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/theme_color.dart';

class RecentSearchData extends StatelessWidget {
  const RecentSearchData({super.key, required this.recentSearch});

  final String recentSearch;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
           Icon(Icons.search, color: ThemeColor.grey),
          const SizedBox(width: 8),
          Expanded(child: Text(recentSearch,style: Theme.of(context).textTheme.bodyLarge,)),
           Icon(Icons.close, color: ThemeColor.grey),
        ],
      ),
    );
  }
}
