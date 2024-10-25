import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/theme_color.dart';

import '../product_widgets.dart';


class ProductDelivery extends StatelessWidget {
  final IconData icon;
  final String text;
  const ProductDelivery({super.key,required, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: Row(
      children: [
        Icon(icon,color: ThemeColor.iconColor,),
        // SizedBox(width: 5),
        Text(text),
      ],
    ));
  }
}
