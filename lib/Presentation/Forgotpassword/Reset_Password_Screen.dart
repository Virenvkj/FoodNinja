import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodninja/core/CommonWidget/textformfield_widget.dart';
import 'package:foodninja/core/constant/extension.dart';
import 'package:foodninja/core/constant/strings.dart';
import '../../core/CommonWidget/button_widget.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController passWordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reset Password',
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
              AppStrings.ResetPasswordScreenTitle,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 36),
            ),
            const Text(
              AppStrings.ResetPasswordScreenSubTitle,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: context.height(context) * 0.020),
            const Text(AppStrings.NewPassword,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
            TextformfieldWidget(
              controller: passWordController,
              hint: '********',
            ),
            const Text(AppStrings.NewPasswordSubTitle,
                style: TextStyle(fontSize: 16)),
            SizedBox(height: context.height(context) * 0.020),
            const Text(AppStrings.ConfirmPassword,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
            TextformfieldWidget(
              controller: passWordController,
              hint: '********',
            ),
            const Text(AppStrings.ConfirmPasswordSubTitle,
                style: TextStyle(fontSize: 16)),
            SizedBox(height: context.height(context) * 0.37),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Column(
                      children: [
                        Container(
                          height: 500,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0),
                              ),
                              color: CupertinoColors.white),
                          child: Column(
                            children: [
                              const SizedBox(height: 10,),
                              const Divider(
                                  thickness: 5,
                                  color: Colors.black26,
                                  indent: 150,
                                  endIndent: 150,
                                ),
                              const SizedBox(height: 32,),
                              Image.asset(
                                'assets/Success.png',
                                height: 150,
                                width: 250,
                              ),
                              const SizedBox(height: 22,),
                              const Text(
                                AppStrings.BottomSheetTitle,
                                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 36),
                              ),
                              const SizedBox(height: 22,),
                              const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  AppStrings.BottomSheetSubTitle,
                                  style: TextStyle(fontSize: 16, color: Colors.black54,),
                                ),
                              ),
                              const SizedBox(height: 32,),
                              const ButtonWidget(
                                buttonName: AppStrings.BottomSheetVerifyAccount,
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const ButtonWidget(
                buttonName: AppStrings.VerifyAccount,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
