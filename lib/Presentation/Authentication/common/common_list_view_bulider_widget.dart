import 'package:flutter/material.dart';
import 'package:foodninja/Presentation/Authentication/common/common_circle_button.dart';
import 'package:foodninja/core/constant/extension.dart';
import 'package:foodninja/core/constant/strings.dart';

class CommonListViewBuliderWidget extends StatefulWidget {
  const CommonListViewBuliderWidget({super.key});

  @override
  State<CommonListViewBuliderWidget> createState() => _CommonListViewBuliderWidgetState();
}

class _CommonListViewBuliderWidgetState extends State<CommonListViewBuliderWidget> {

   List<String> loginImages=[
     AppStrings.googleIcon,
     AppStrings.facebookIcon,
     AppStrings.appleIcon,
   ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(height: context.height(context) * 0.07,
      child: ListView.builder(
        itemCount: loginImages.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) =>
            Padding(
              padding:  EdgeInsets.all(context.height(context)*0.01),
              child: CommonCircleButton(image: loginImages[index]),
            ),
      ),
    );
  }
}
