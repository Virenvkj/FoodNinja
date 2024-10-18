import 'package:flutter/material.dart';
import 'package:foodninja/Presentation/Authentication/common/common_circle_button.dart';
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
              RegistrationScreenString.title,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 36),
            ),
            const Text(
              RegistrationScreenString.subtitle,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: context.height(context) * 0.040),
            const Text(
              RegistrationScreenString.email,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            TextformfieldWidget(
              controller: emailNameController,
              hint: 'darshan12@gmail.com',
            ),
            SizedBox(height: context.height(context) * 0.020),
            const Text(RegistrationScreenString.userName,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
            TextformfieldWidget(
              controller: userNameController,
              hint: '********',
            ),
            SizedBox(height: context.height(context) * 0.020),
            const Text(RegistrationScreenString.password,
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
                      style: TextStyle(color: Colors.black,fontSize: 16),
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
              buttonName: RegistrationScreenString.singUp,
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
            Padding(
              padding: EdgeInsets.all(context.height(context) * 0.030),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CommonCircleButton(image: ImagePath.googleImage),
                  CommonCircleButton(image: ImagePath.facebookImage),
                  CommonCircleButton(image: ImagePath.appleImage),
                ],
              ),
            ),
            SizedBox(height: context.height(context) * 0.030),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(RegistrationScreenString.alreadyHaveAccount,
                    style: TextStyle(fontSize: 16)),
                GestureDetector(
                  onTap: () {
                    context.pushAndRemoveUntil(context, target: const LoginScreen());
                  },
                  child: Text(LoginScreenString.singIn,
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
