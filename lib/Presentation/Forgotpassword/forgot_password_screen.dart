import 'package:flutter/material.dart';
import 'package:foodninja/Presentation/Forgotpassword/Otp_Screen.dart';
import 'package:foodninja/core/CommonWidget/textformfield_widget.dart';
import 'package:foodninja/core/constant/extension.dart';
import 'package:foodninja/core/constant/strings.dart';
import '../../core/CommonWidget/button_widget.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController ForgotpasswordemailNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: context.height(context) * 0.090,
            ),
            const Text(
              AppStrings.ForgotpasswordScreenTitle,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 36),
            ),
            const Text(
              AppStrings.ForgotpasswordScreenSubTitle,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: context.height(context) * 0.040),
            const Text(
              AppStrings.ForgotpasswordScreenEmail,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            TextformfieldWidget(
              controller: ForgotpasswordemailNameController,
              hint: 'anyone01@gmail.com',
            ),
            SizedBox(height: context.height(context) * 0.020),
            Padding(
              padding: EdgeInsets.only(
                  top: context.height(context) * 0.5,
                  bottom: context.height(context) * 0.025),
            ),
             GestureDetector(
               onTap: () => context.push(context,target:const OtpScreen() ),
               child: const ButtonWidget(
                  buttonName: AppStrings.ForgotpasswordScreenContinueButtorn,
                ),
             ),
          ],
        ),
      ),
    );
  }
}
