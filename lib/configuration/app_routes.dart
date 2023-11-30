import 'package:flutter/cupertino.dart';
import 'package:sunversum_admin/screens/authentication/login_screen.dart';
import 'package:sunversum_admin/screens/splash_screen.dart';
import 'package:sunversum_admin/screens/tabs/distributers/distributor_details.dart';
import 'package:sunversum_admin/screens/tabs/interested_list/details/details.dart';

import '../screens/authentication/forget_password_screen.dart';
import '../screens/tabs/tabs_screen.dart';


Map<String, Widget Function(BuildContext)> appRoutes = {
  SplashScreen.routeName:(context) => const SplashScreen(),
  LoginScreen.routeName:(context) => const LoginScreen(),
  TabsScreen.routeName :(context) => const TabsScreen(),
  ForgetPasswordScreen.routeName :(context) => const ForgetPasswordScreen(),
  DistributorDetails.routeName :(context) => const DistributorDetails(),
  Details.routeName :(context) => Details(),
};
