import 'package:aveg_project/screens/home/home_screen.dart';
import 'package:aveg_project/screens/intial/login/login_screen.dart';
import 'package:aveg_project/screens/intial/otp/otp_screen.dart';
import 'package:aveg_project/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xffdc2e45),
        buttonTheme: const ButtonThemeData(
          buttonColor: Color(0xffdc2e45),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              const Color(0xffdc2e45),
            ),
          ),
        ),
      ),
      getPages: [
        GetPage(
          name: SplashScreen.id,
          page: () => const SplashScreen(),
        ),
        GetPage(name: LoginScreen.id, page: () => const LoginScreen()),
        GetPage(name: OTPScreen.id, page: () => const OTPScreen()),
        GetPage(name: HomeScreen.id, page: () => const HomeScreen())
      ],
      initialRoute: SplashScreen.id,
    );
  }
}
