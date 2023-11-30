import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sunversum_admin/configuration/app_colors.dart';
import 'package:sunversum_admin/screens/authentication/forget_password_screen.dart';
import 'package:sunversum_admin/screens/authentication/login_screen.dart';
import 'package:sunversum_admin/screens/splash_screen.dart';
import 'package:sunversum_admin/screens/tabs/distributers/distributor_details.dart';
import 'package:sunversum_admin/screens/tabs/tabs_screen.dart';

import 'configuration/app_routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
      Brightness.dark, // Use light icons on the status bar
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sunversum Admin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter',
        /*dividerTheme: DividerThemeData(
          color: AppColors.kDividerColor,
          thickness: 2,
        ),*/
        dialogBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarIconBrightness: Brightness.dark,
                statusBarColor: Colors.white,
                statusBarBrightness: Brightness.light),
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white),
        scaffoldBackgroundColor: const Color(0xffFAFAFA),
        shadowColor: AppColors.kShadowColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.kPrimaryColor,
          primary: AppColors.kPrimaryColor,
          // secondary: AppColors.kSecondaryColor,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          fillColor: Colors.white,
          hintStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.kGreyColor),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            // borderSide: BorderSide(color: AppColors.kGreyColor)
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            // borderSide: BorderSide(color: red)
          ),
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
              borderSide: BorderSide(color: AppColors.kGreyColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
              borderSide: BorderSide(color: AppColors.kPrimaryColor)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
              borderSide: BorderSide(color: AppColors.kGreyColor)),
          border: InputBorder.none,
        ),
        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStatePropertyAll(
              TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline),
            ),
          ),
        ),
        useMaterial3: true,
      ),
      // home: const SplashScreen(),
      initialRoute: SplashScreen.routeName, // Set the initial route
      routes: appRoutes,
      // initialRoute: SplashScreen.routeName,
      //  routes: appRoutes,
    );
  }
}
