import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/extension.dart';
import 'package:foodninja/core/constant/theme_color.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.buttonName, required this.function});

  final String buttonName;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: context.height(context) * 0.065,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), color: ThemeColor.buttonColor),
        child: Center(
          child: Text(
            buttonName,
            style: const TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
