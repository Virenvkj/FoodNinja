import 'package:flutter/material.dart';
import 'package:foodninja/Domain/categories_model/categories_model.dart';
import 'package:foodninja/Presentation/tabs_screens/screens/home_screen/search_screen/search_widget/categories_button.dart';
import 'package:foodninja/Presentation/tabs_screens/screens/home_screen/search_screen/search_widget/recent_order.dart';
import 'package:foodninja/Presentation/tabs_screens/screens/home_screen/search_screen/search_widget/recent_search_data.dart';
import 'package:foodninja/core/CommonWidget/common_app_bar.dart';
import 'package:foodninja/core/CommonWidget/textformfield_widget.dart';
import 'package:foodninja/core/constant/extension.dart';
import 'package:foodninja/core/constant/app_icons.dart';
import 'package:foodninja/core/constant/strings.dart';

import '../../../../../core/constant/assets_image.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final searchController = TextEditingController();
  final List<String> recentSearchList = [
    'Burgers',
    'Fast food',
    'Dessert',
    'French',
    'Pastry'
  ];

  final List<CategoriesModel> categoriesList = const [
    CategoriesModel(name: 'Burger', iconImage: AssetsImage.burgerIcon),
    CategoriesModel(name: 'Taco', iconImage: AssetsImage.tacoIcon),
    CategoriesModel(name: 'Drink', iconImage: AssetsImage.drinkIcon),
    CategoriesModel(name: 'Pizza', iconImage: AssetsImage.pizzaIcon),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CommonAppBar(
        title: AppStrings.searchFood,
      ),
      body: Padding(
        padding: EdgeInsets.all(context.height(context) * 0.030),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Search bar
            TextformfieldWidget(
              controller: searchController,
              hint: AppStrings.searchFood,
              priFixIcon: AppIcons.search,
            ),
            const SizedBox(height: 16),

               SizedBox(
                 height: context.height(context)*0.1,
                 child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesList.length,
                  itemBuilder: (context, index) => CategoriesButton(
                      label: categoriesList[index].name,
                      iconImage: categoriesList[index].iconImage),
                               ),
               ),

            const SizedBox(height: 16),

            // Recent Searches
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent searches',
                    style: Theme.of(context).textTheme.titleLarge),
                Text('Delete', style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
            const SizedBox(height: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                    itemCount: recentSearchList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RecentSearchData(
                          recentSearch: recentSearchList[index]),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  // My Recent Orders SectionD
                  Text('My recent orders',
                      style: Theme.of(context).textTheme.titleLarge),
                  const RecentOrder(
                      title: 'Ordinary Burgers',
                      rating: '4.9',
                      distance: '190m'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
