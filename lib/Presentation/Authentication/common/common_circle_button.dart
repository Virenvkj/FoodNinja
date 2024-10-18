import 'package:flutter/material.dart';
import 'package:foodninja/core/CommonWidget/button_widget.dart';
import 'package:foodninja/core/constant/extension.dart';

class CommonCircleButton extends StatelessWidget {
  const CommonCircleButton({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: context.height(context) * 0.028,
      backgroundImage: AssetImage(image),
    );
  }
}
