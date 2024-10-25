import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/extension.dart';
import 'package:foodninja/core/constant/strings.dart';

import '../../../../../core/CommonWidget/button_widget.dart';
import 'cart_screen_common_widget/row_details.dart';
import 'payment_widgets.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.paymentScreenTitle,style: TextStyle(color: Colors.black),),
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
            const SizedBox(height: 10),
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
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      Text('\$12,230', style: TextStyle(color: Colors.orange)),
                    ],
                  ),
                ),
                const Text('14 items', style: TextStyle(color: Colors.grey)),
              ],
            ),
             SizedBox(height:context.height(context) * 0.015),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(), // To prevent scrolling if nested inside other scrollable views
              itemCount: 4, // Number of rows
              separatorBuilder: (context, index) => SizedBox(height:14), // Height between rows
              itemBuilder: (context, index) {
                return transactionDetails[index]; // Your row widgets in a list
              },
            ),
            SizedBox(height:context.height(context) * 0.015),
             Divider(endIndent: 10,),
             SizedBox(height:context.height(context) * 0.015),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(), // To prevent scrolling if nested inside other scrollable views
            itemCount: 4, // Number of rows
            separatorBuilder: (context, index) => SizedBox(height:14), // Height between rows
            itemBuilder: (context, index) {
              return deliveryDetails[index]; // Your row widgets in a list
            },
          ),


            const SizedBox(height: 30),
            ButtonWidget(buttonName: AppStrings.paymentScreenCheckout, function: (){},)
            // ElevatedButton(
            //   onPressed: () {},
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.orange,
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(30),
            //     ),
            //     padding: const EdgeInsets.symmetric(vertical: 15),
            //   ),
            //   child: const Text('Checkout Now', style: TextStyle(fontSize: 18,color: Colors.white)),
            // ),
          ],
        ),
      ),
    );
  }

  
}
