import 'package:flutter/material.dart';
import 'package:foodninja/Presentation/common_widgets/custom_back_button.dart';
import 'package:foodninja/core/constant/extension.dart';
import 'package:foodninja/core/constant/theme_color.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Icon? actionIcon;
  final VoidCallback? onActionPressed;

  const CommonAppBar({
    super.key,
    required this.title,
    this.actionIcon,
    this.onActionPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title,style: Theme.of(context).textTheme.titleLarge,),
      actions: actionIcon != null
          ? [
      GestureDetector(
        onTap: ()=>context.pop(context),
        child: Container(
          width: context.width(context)*0.15,
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
          actionIcon,
        ),
      ),
      ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
