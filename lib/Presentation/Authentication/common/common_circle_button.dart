import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        radius: context.height(context) * 0.030,
        backgroundColor: Colors.white,
        child: ClipOval(
          child: SvgPicture.asset(
            image,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ));
  }
}
