import 'package:aveg_project/screens/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class OtpScreenController extends GetxController {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  final TextEditingController otpTED = TextEditingController();

  void onProceedClicked() async {
    if (key.currentState!.validate()) {
      await Future.delayed(const Duration(seconds: 2));
      Get.snackbar("Information", "verification success",
          snackPosition: SnackPosition.BOTTOM);
      Get.toNamed(HomeScreen.id);
    }
  }
}
