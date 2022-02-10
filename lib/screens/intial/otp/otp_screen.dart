import 'dart:async';

import 'package:aveg_project/screens/intial/otp/otp_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPScreen extends StatelessWidget {
  static const id = '/OTPScreen';

  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StreamController<ErrorAnimationType> errorController =
        StreamController<ErrorAnimationType>();
    final controller = Get.put(OtpScreenController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          'OTP Verification',
          style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: controller.key,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Enter the 6-digit number sent to',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(
                  height: 11,
                ),
                Text(
                  '+91${Get.arguments}',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 40,
                ),
                PinCodeTextField(
                  controller: controller.otpTED,
                  validator: (v) {
                    if (v!.isEmpty) {
                      return 'This field is required';
                    }
                    if (v.length != 6) return 'Please enter valid otp';
                    return null;
                  },
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  animationDuration: Duration(milliseconds: 300),
                  errorAnimationController: errorController,
                  // Pass it here
                  onChanged: (value) {},
                  appContext: context,
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () => controller.onProceedClicked(),
                    child: const Text('Verify and proceed'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
