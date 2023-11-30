import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sunversum_admin/screens/authentication/login_screen.dart';

import '../configuration/app_images.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(
        milliseconds: 2000,
      ),
      () => Navigator.of(context).pushReplacementNamed(LoginScreen.routeName),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.splashScreen),
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Image.asset(
            AppImages.appLogo,
            color: Colors.white,
            height: 100,
            width: 200,
          ),
        ),
      ),
    );
  }
}
