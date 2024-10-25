import 'package:flutter/material.dart';
import 'package:foodninja/Presentation/tabs_screens/screens/home_screen/product_screen/product_screen_common_widgets/product_delivery.dart';
import 'package:foodninja/Presentation/tabs_screens/screens/home_screen/product_screen/product_screen_common_widgets/recommended_item_widget.dart';
import 'package:foodninja/core/constant/extension.dart';
import 'package:foodninja/core/constant/strings.dart';
import '../../../../../core/constant/theme_color.dart';
import 'product_widgets.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0)
                .copyWith(right: context.height(context) * 0.01),
            child: Container(
              width: context.width(context) * 0.1,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 0,
                    blurRadius: 4,
                    color: ThemeColor.black.withOpacity(0.25),
                  ),
                ],
                color: ThemeColor.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1,
                  color: ThemeColor.neutral30,
                ),
              ),
              child: Icon(
                Icons.share_outlined,
                color: ThemeColor.neutral100,
                size: context.height(context) * 0.024,
              ),
            ),
          )
        ],
        title: const Text(AppStrings.productDetailScreenTitle,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // height: 295,
          
                  height: context.height(context) * 0.35,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.orange,
                      image: const DecorationImage(
                          image: AssetImage('assets/profile_screen/burger.png'),
                          fit: BoxFit.contain)),
                ),
              ),
              const Text(
                "Burger With Meat 🍔",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
              SizedBox(height: context.height(context) * 0.01),
              const Text(
                "\$12,230",
                // style: Theme.of(context).textTheme.titleLarge?.copyWith(
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              SizedBox(height: context.height(context) * 0.015),
              Container(
                height: context.height(context) * 0.05,
                width: double.infinity,
                decoration: const BoxDecoration(color: Color(0xfffffcf2)),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                          ProductDelivery(icon: Icons.attach_money, text: "Free Delivery"),
                          ProductDelivery(icon: Icons.timer, text: "20 - 30 min"),
                          ProductDelivery(icon: Icons.star, text: "4.5"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: context.height(context) * 0.010),
             const Divider(thickness: 1.5,color: Colors.black12,),
              SizedBox(height: context.height(context) * 0.010),
              const Text(
               AppStrings.productDetailScreenDescription,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: context.height(context) * 0.01),
              const Text(
                "Burger With Meat is a typical food from our restaurant that is much in demand by many people .",
                style: TextStyle(fontSize: 16,color: Colors.grey),
              ),
              SizedBox(height: context.height(context) * 0.010),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.productDetailScreenRecommend,
                    style:Theme.of(context).textTheme.titleLarge,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      AppStrings.productDetailScreenSeeAll,
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ],
              ),
              // Recommended Items Horizontal List
              SizedBox(
                height: 100.0,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => RecommendedItemWidget(imagePath: 'assets/profile_screen/burger.png'),
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const ProductsWidgets()
            ],
          ),
        ),
      ),

    );
  }
}
