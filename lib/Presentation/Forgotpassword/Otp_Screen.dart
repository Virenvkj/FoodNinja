import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:foodninja/Presentation/Forgotpassword/Reset_Password_Screen.dart';
import 'package:foodninja/core/constant/extension.dart';
import 'package:foodninja/core/constant/strings.dart';
import 'package:foodninja/core/constant/theme_color.dart';
import '../../core/CommonWidget/button_widget.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OTP',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back, size: 20),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            const Text(
              AppStrings.OtpScreenTitle,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 36),
            ),
            const Text(
              AppStrings.OtpScreenSubTitle,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: context.height(context) * 0.030),
            OtpTextField(
              numberOfFields: 4,
              borderColor: const Color(0xFF512DA8),
              showFieldAsBox: true,
            ),
            SizedBox(height: context.height(context) * 0.030),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(AppStrings.dontreceivecode,
                    style: TextStyle(fontSize: 16)),
                GestureDetector(
                  child: Text(AppStrings.Resend,
                      style: TextStyle(
                          color: ThemeColor.buttonColor, fontSize: 18)),
                ),
              ],
            ),
            SizedBox(height: context.height(context) * 0.030),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(CupertinoIcons.time),
                ),
                Text('09.00'),
              ],
            ),
            SizedBox(height: context.height(context) * 0.42),
            GestureDetector(
              onTap: () => context.push(context,target:const ResetPasswordScreen() ),
              child: const ButtonWidget(
                buttonName: AppStrings.OtpScreenContinueButtorn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
