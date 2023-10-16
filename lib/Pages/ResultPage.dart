import 'package:bmi_cal/Components/RactButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    size: 20,
                  ),
                  Text("Back"),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Your BMI is",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 350,
                child: Expanded(
                  child: CircularPercentIndicator(
                    animationDuration: 1000,
                    footer: Text(
                      "Underweight",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,),
                    ),
                    radius: 130,
                    lineWidth: 30,
                    animation: true,
                    circularStrokeCap: CircularStrokeCap.round,
                    percent: 0.4,
                    center:  Text(
                      "100%",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 60,
                          fontWeight: FontWeight.bold),
                    ),
                    progressColor: Theme.of(context).colorScheme.primary,
                    backgroundColor:
                        Theme.of(context).colorScheme.primary.withOpacity(0.2),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(10),
                child:const Text(
                    "Your BMI is 20.7, indicating your weight is in the Normal category for adults of your height.  For your height, a normal weight range wouldbe from 53.5 to 72 kilograms.Maintaining a healthy weight may reduce the risk of chronic diseases associated with overweight and obesity."),
              ),
              const SizedBox(height: 20),
              MyRactButton(
                onPress: () {
                  Get.back();
                },
                btnName: "Find Out More",
                icon: Icons.arrow_back_ios_new_outlined,
              )
            ],
          ),
        ),
      ),
    );
  }
}
