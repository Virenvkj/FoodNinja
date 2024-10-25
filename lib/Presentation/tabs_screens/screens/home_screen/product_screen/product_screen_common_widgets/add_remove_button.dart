import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/extension.dart';

import '../../../../../../core/constant/theme_color.dart';

class AddRemoveButton extends StatelessWidget {
  final IconData icon;
  final Function function;
  const AddRemoveButton({super.key, required this.icon, required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        function;
      },
      child: Container(
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
         icon,
          color: ThemeColor.neutral100,
          size: 30,
        ),
      ),
    );
  }
}
