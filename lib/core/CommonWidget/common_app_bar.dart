import 'package:flutter/material.dart';
import 'package:foodninja/Presentation/common_widgets/custom_back_button.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? actionIcon;
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
      leading: const CustomBackButton(),
      centerTitle: true,
      title: Text(title,style: Theme.of(context).textTheme.titleLarge,),
      actions: actionIcon != null
          ? [
        IconButton(
          icon: Icon(actionIcon),
          onPressed: onActionPressed,
        ),
      ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
