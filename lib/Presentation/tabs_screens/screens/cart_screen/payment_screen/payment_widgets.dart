import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/strings.dart';
import 'cart_screen_common_widget/row_details.dart';

     Widget buildTransactionDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(AppStrings.paymentScreenDetailsTransaction,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
       
      ],
    );
  }

     Widget buildDeliveryDetails() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppStrings.paymentScreenTotalDeliverTo,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),

      ],
    );
  }
