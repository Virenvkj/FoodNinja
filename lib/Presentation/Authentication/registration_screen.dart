import 'package:flutter/material.dart';
import 'package:foodninja/Presentation/Authentication/common/common_list_view_bulider_widget.dart';
import 'package:foodninja/Presentation/Authentication/login_screen.dart';
import 'package:foodninja/core/CommonWidget/button_widget.dart';
import 'package:foodninja/core/CommonWidget/textformfield_widget.dart';
import 'package:foodninja/core/constant/extension.dart';
import 'package:foodninja/core/constant/strings.dart';
import 'package:foodninja/core/constant/theme_color.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController emailNameController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

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
              AppStrings.registrationScreenTitle,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 36),
            ),
            const Text(
              AppStrings.registrationScreenSubTitle,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: context.height(context) * 0.040),
            const Text(
              AppStrings.registrationScreenEmail,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            TextformfieldWidget(
              controller: emailNameController,
              hint: 'darshan12@gmail.com',
            ),
            SizedBox(height: context.height(context) * 0.020),
            const Text(AppStrings.registrationScreenUserName,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
            TextformfieldWidget(
              controller: userNameController,
              hint: '********',
            ),
            SizedBox(height: context.height(context) * 0.020),
            const Text(AppStrings.registrationScreenPassword,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
            TextformfieldWidget(
              controller: passWordController,
              hint: '********',
            ),
            Padding(
              padding: EdgeInsets.all(context.height(context) * 0.008),
              child: Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  RichText(
                    text: const TextSpan(
                      text: 'I Agree with ',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      children: [
                        TextSpan(
                          text: 'Terms of Service ',
                          style: TextStyle(color: Colors.orange),
                        ),
                        TextSpan(
                          text: 'and ',
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(color: Colors.orange),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const ButtonWidget(
              buttonName: AppStrings.register,
            ),
            SizedBox(height: context.height(context) * 0.030),
            const Row(
              children: [
                Expanded(
                    child: Divider(
                  thickness: 1,
                  color: Colors.black,
                )),
                Text(
                  'Or sign in with',
                  style: TextStyle(fontSize: 18),
                ),
                Expanded(
                    child: Divider(
                  thickness: 1,
                  color: Colors.black,
                )),
              ],
            ),
            SizedBox(height: context.height(context) * 0.025),
            const CommonListViewBuliderWidget(),
            SizedBox(height: context.height(context) * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(AppStrings.haveAnAccount,
                    style: TextStyle(fontSize: 16)),
                GestureDetector(
                  onTap: () =>
                      context.pushAndRemoveUntil(context,
                      target: const LoginScreen()),
                  child: Text(AppStrings.signIn,
                      style: TextStyle(
                          color: ThemeColor.buttonColor, fontSize: 18)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
