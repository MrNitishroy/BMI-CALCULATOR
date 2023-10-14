import 'package:get/get.dart';

class BMIConroller extends GetxController {
  RxString Gender = "MALE".obs;
  RxInt weight = 12.obs;
  RxInt age = 12.obs;
  RxDouble height = 100.0.obs;

  void genderHandle(String gender) {
    Gender.value = gender;
  }
}
