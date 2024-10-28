import 'package:flutter/material.dart';
import 'package:foodninja/Presentation/tabs_screens/screens/cart_screen/cart_item.dart';
import 'package:foodninja/Presentation/tabs_screens/screens/cart_screen/cart_summary_row.dart';
import 'package:foodninja/core/CommonWidget/button_widget.dart';
import 'package:foodninja/core/CommonWidget/common_app_bar.dart';
import 'package:foodninja/core/CommonWidget/textformfield_widget.dart';
import 'package:foodninja/core/constant/icons.dart';
import 'package:foodninja/core/constant/strings.dart';
import 'payment_screen/payment_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final promoCodeController = TextEditingController();

  // Sample cart items
  final List<Map<String, String>> cartItems = [
    {
      'title': 'Burger With Meat',
      'price': '12,230',
      'imageUrl': 'assets/profile_screen/burger.png',
    },
    {
      'title': 'Ordinary Burgers',
      'price': '12,230',
      'imageUrl': 'assets/profile_screen/burger.png',
    },
    {
      'title': 'Ordinary Burgers',
      'price': '12,230',
      'imageUrl': 'assets/profile_screen/burger.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: AppStrings.myCart, actionIcon: Iconses.menu),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Delivery Location Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Delivery Location',
                      style: Theme.of(context).textTheme.bodyMedium),
                  Text('Home',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.w700)),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Change Location'),
              ),
            ],
          ),
          const SizedBox(height: 10),

          // Promo Code Section
          TextformfieldWidget(
              priFixIcon: Iconses.percent,
              controller: promoCodeController,
              hint: AppStrings.promoCode),
          const SizedBox(height: 20),

          // Cart Items Section
          ...cartItems.map((item) => CartItem(
                title: item['title'] ?? '',
                price: item['price'] ?? '',
                imageUrl: item['imageUrl'] ?? '',
              )),

          const SizedBox(height: 20),

          // Payment Summary Section
          const Card(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Payment Summary',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  CartSummaryRow(
                    label: 'Total Items (3)',
                    value: '\$48,900',
                  ),
                  CartSummaryRow(
                    label: 'Delivery Fee',
                    value: 'Free',
                  ),
                  CartSummaryRow(
                    label: 'Discount',
                    value: '-\$10,900',
                    isDiscount: true,
                  ),
                  Divider(),
                  CartSummaryRow(
                    label: 'Total',
                    value: '\$38,000',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Order Now Button
          const ButtonWidget(
            navigatorScreenName: PaymentScreen(),
            buttonName: 'Order Now',
          ),
        ],
      ),
    );
  }
}
