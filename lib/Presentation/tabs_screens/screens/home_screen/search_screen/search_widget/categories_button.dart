import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/extension.dart';
import 'package:foodninja/core/constant/theme_color.dart';

class CategoriesButton extends StatelessWidget {
  const CategoriesButton(
      {super.key, required this.label, required this.iconImage});

  final String label;
  final String iconImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(context.height(context)*0.008).copyWith(right: context.width(context)*0.045),
      child: Container(
        height: context.height(context) * 0.68,
        width: context.width(context) * 0.16,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: ThemeColor.neutral30,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
                height:context.height(context)*0.035,
        child: Image.asset(iconImage,fit: BoxFit.fitHeight,)),
            Text(label,style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
      ),
    );
  }
}
