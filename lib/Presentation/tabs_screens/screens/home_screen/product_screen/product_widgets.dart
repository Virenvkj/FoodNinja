import 'package:flutter/material.dart';
import 'package:foodninja/Presentation/tabs_screens/screens/home_screen/product_screen/product_screen_common_widgets/add_remove_button.dart';
import 'package:foodninja/core/constant/extension.dart';
import 'package:foodninja/core/constant/strings.dart';
import '../../cart_screen/cart_screen.dart';

class ProductsWidgets extends StatelessWidget {
  const ProductsWidgets({super.key});
  @override
  Widget build(BuildContext context) {
    final width03 = SizedBox(width: context.width(context) * 0.03,);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  AddRemoveButton(icon: Icons.remove, function: (){},),
                 width03,
                 const  Text("4"),
                  width03,
                  AddRemoveButton(icon: Icons.add, function: (){},),
                  width03,
                ],
              ),
        SizedBox(width: context.width(context) * 0.1,),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                   context.push(context, target:  const CartScreen());
                  },
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  label: const Text(
                    AppStrings.productDetailScreenAddToCart,
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    backgroundColor: Colors.orange,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

