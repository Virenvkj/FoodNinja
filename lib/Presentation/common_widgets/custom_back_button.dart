import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/extension.dart';
import 'package:foodninja/core/constant/icons.dart';
import 'package:foodninja/core/constant/theme_color.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
      return GestureDetector(
        onTap: ()=>context.pop(context),
        child: Container(
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
          child:
            Iconses.back,
        ),
      );
  }
}
