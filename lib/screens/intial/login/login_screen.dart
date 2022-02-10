import 'package:aveg_project/screens/intial/login/login_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  static const id = '/LoginScreen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(LoginScreenController());
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: controller.key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Enter mobile number for Login / Registration',
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(
                  height: 43,
                ),
                Text(
                  'Mobile number',
                  style: Theme.of(context).textTheme.caption,
                ),
                TextFormField(
                  controller: controller.phoneNoTED,
                  validator: controller.validatePhoneNo,
                  onSaved: controller.savePhoneNo,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.phone),
                    prefixText: '+91',
                    prefixStyle: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.bold),
                    labelStyle: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  maxLength: 10,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () => controller.onGetOtpButtonPressed(),
                  child: const Text('Get OTP'),
                )
              ],
              mainAxisSize: MainAxisSize.min,
            ),
          ),
        ),
      ),
    );
  }
}
