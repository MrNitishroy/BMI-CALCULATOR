import 'package:bmi_cal/Controllers/BMIController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrimaryButton extends StatelessWidget {
  final IconData icon;
  final String btnName;
  final VoidCallback onPress;
  const PrimaryButton(
      {super.key,
      required this.icon,
      required this.btnName,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    BMIConroller bmiConroller = Get.put(BMIConroller());
    return Expanded(
      child: InkWell(
          onTap: onPress,
          child: Obx(
            () => Container(
              height: 50,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: bmiConroller.Gender.value == btnName
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.primaryContainer),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon,
                      color: bmiConroller.Gender.value == btnName
                          ? Theme.of(context).colorScheme.primaryContainer
                          : Theme.of(context).colorScheme.primary),
                  SizedBox(width: 10),
                  Text(
                    btnName,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        color: bmiConroller.Gender.value == btnName
                            ? Theme.of(context).colorScheme.primaryContainer
                            : Theme.of(context).colorScheme.primary),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
