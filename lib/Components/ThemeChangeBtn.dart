import 'package:bmi_cal/Controllers/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ThemeChangeBtn extends StatelessWidget {
  const ThemeChangeBtn({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(15),
          ),
          child: InkWell(
            onTap: () {
              themeController.chnageTheme();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  "assets/icons/light.svg",
                  color: themeController.isDark.value
                      ? Theme.of(context).colorScheme.onSecondaryContainer
                      : Theme.of(context).colorScheme.primary,
                ),
                SizedBox(
                  width: 20,
                ),
                SvgPicture.asset(
                  "assets/icons/dark.svg",
                  color: themeController.isDark.value
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onSecondaryContainer,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
