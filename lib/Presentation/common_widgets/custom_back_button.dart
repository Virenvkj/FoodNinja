import 'package:flutter/material.dart';
import 'package:foodninja/core/CommonWidget/button_widget.dart';
import 'package:foodninja/core/constant/extension.dart';
import 'package:foodninja/core/constant/theme_color.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height(context) * 0.1 ,
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
        Icons.chevron_left,
        color: ThemeColor.neutral100,
        size: 25,
      ),
    );
  }
}
