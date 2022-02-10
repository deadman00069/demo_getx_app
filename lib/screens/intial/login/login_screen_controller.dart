import 'package:aveg_project/screens/intial/otp/otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  final TextEditingController phoneNoTED = TextEditingController();

  String? validatePhoneNo(String? v) {
    if (v!.isEmpty) {
      return 'This field is required';
    }
    if (v.length != 10) {
      return 'Please enter valid phone no';
    }
    if (!v.isPhoneNumber) {
      return 'Please enter valid phone no';
    }
    return null;
  }

  void savePhoneNo(String? v) {
    phoneNoTED.text = v!;
  }

  onGetOtpButtonPressed() {
    if (key.currentState!.validate()) {
      key.currentState!.save();
      Get.toNamed(OTPScreen.id, arguments: phoneNoTED.text);
    }
  }
}
