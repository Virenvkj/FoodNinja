import 'package:flutter/material.dart';
import 'package:foodninja/Presentation/tabs_screens/screens/cart_screen/payment_screen/payment_screen.dart';
import 'package:foodninja/core/CommonWidget/button_widget.dart';
import 'package:foodninja/core/constant/extension.dart';
import 'package:foodninja/core/constant/theme_color.dart';

import '../../../../../core/constant/language.dart';

class LanguageSelector extends StatefulWidget {
  final String selectedLanguage;
  final Function(String) onLanguageSelected;

  const LanguageSelector({
    super.key,
    required this.selectedLanguage,
    required this.onLanguageSelected,
  });

  @override
  State<LanguageSelector> createState() => _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector> {
  late String currentSelectedLanguage;

  @override
  void initState() {
    super.initState();
    currentSelectedLanguage = widget.selectedLanguage;
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration:  BoxDecoration(
        color: ThemeColor.white,
        borderRadius:const  BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Padding(
        padding: EdgeInsets.all(context.height(context) * 0.02),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(context.height(context) * 0.02)
                  .copyWith(top: 00),
              child: Center(
                child: Container(
                  height: context.height(context) * 0.006,
                  width: context.width(context) * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ),
            Text(
              'Select Language',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            ...languages.map((language) {
              final bool isSelected =
                  language['name'] == currentSelectedLanguage;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelectedLanguage = language['name']!;
                  });
                  widget.onLanguageSelected(currentSelectedLanguage);
                },
                child: Padding(
                  padding: EdgeInsets.all(context.height(context) * 0.013),
                  child: Container(
                    height: context.height(context) * 0.065,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: isSelected
                            ? ThemeColor.mainColor
                            : ThemeColor.neutral30,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(context.height(context) * 0.010),
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: context.height(context) * 0.030,
                              backgroundColor: ThemeColor.flagBgColor,
                              child: Text(language['flag']!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall)),
                          Expanded(
                            child: Text(
                              language['name']!,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          if (isSelected)
                            Icon(Icons.check_circle,
                                color: ThemeColor.mainColor),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
            SizedBox(
              height: context.height(context) * 0.010,
            ),
            const ButtonWidget(
              buttonName: 'Select',
              navigatorScreenName: PaymentScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
