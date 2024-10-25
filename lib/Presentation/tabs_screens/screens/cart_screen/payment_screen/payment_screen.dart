import 'package:flutter/material.dart';
import 'package:foodninja/Presentation/tabs_screens/screens/cart_screen/payment_screen/payment_screen_common_widget/row_details.dart';
import 'package:foodninja/core/constant/extension.dart';
import 'package:foodninja/core/constant/strings.dart';
import '../../../../../core/CommonWidget/button_widget.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    final height_015 = SizedBox(height: context.height(context) * 0.04);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.paymentScreenTitle,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            const Text(
              AppStrings.paymentScreenDeserveMeal,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            const Text(
              AppStrings.paymentScreenItemOrder,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            height_015,
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/profile_screen/burger.png',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Burger With Meat',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text('\$12,230', style: TextStyle(color: Colors.orange)),
                    ],
                  ),
                ),
                const Text('14 items', style: TextStyle(color: Colors.grey)),
              ],
            ),
            height_015,
            Text(
              AppStrings.paymentScreenDetailsTransaction,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            height_015,
            ListView.separated(
              shrinkWrap: true,
              physics:
                  NeverScrollableScrollPhysics(), // To prevent scrolling if nested inside other scrollable views
              itemCount: 4, // Number of rows
              separatorBuilder: (context, index) =>
                  SizedBox(height: 14), // Height between rows
              itemBuilder: (context, index) {
                return transactionDetails[index]; // Your row widgets in a list
              },
            ),
            height_015,
            Divider(
              endIndent: 10,
            ),
            height_015,
            Text(
              AppStrings.paymentScreenTotalDeliverTo,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            height_015,
            ListView.separated(
              shrinkWrap: true,
              physics:
                  NeverScrollableScrollPhysics(), // To prevent scrolling if nested inside other scrollable views
              itemCount: 4, // Number of rows
              separatorBuilder: (context, index) =>
                  SizedBox(height: 14), // Height between rows
              itemBuilder: (context, index) {
                return deliveryDetails[index]; // Your row widgets in a list
              },
            ),

            height_015,

            ButtonWidget(
              buttonName: AppStrings.paymentScreenCheckout,
              function: () {},
            )
          ],
        ),
      ),
    );
  }
}
