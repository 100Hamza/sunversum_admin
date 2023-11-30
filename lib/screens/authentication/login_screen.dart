import 'package:flutter/material.dart';
import 'package:sunversum_admin/configuration/app_theme.dart';
import 'package:sunversum_admin/screens/authentication/forget_password_screen.dart';
import 'package:sunversum_admin/screens/tabs/tabs_screen.dart';
import '../../components/rounded_button.dart';
import '../../configuration/app_colors.dart';
import '../../configuration/app_images.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = 'login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              30.sH,
              Image.asset(
                AppImages.appLogo,
                height: 100,
                width: 180,
                // fit: BoxFit.fill,
              ),
              50.sH,
              const Text(
                'Welcome!',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              ),
              5.sH,
              const Text(
                'Please login to continue',
                style: TextStyle(color: Color(0xffB2B2B2),),
              ),
              40.sH,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Username',
                    style: TextStyle(fontSize: 12, color: AppColors.kGreyColor),
                  ),
                  4.sH,
                  TextFormField(
                    cursorColor: const Color(0xffC1C1C1),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.manage_accounts_outlined, color: AppColors.kGreyColor),
                      hintText: 'Enter Username',
                    ),
                  ),
                  24.sH,
                  const Text(
                    'Password',
                    style: TextStyle(fontSize: 12, color: AppColors.kGreyColor),
                  ),
                  4.sH,
                  TextFormField(
                    cursorColor: const Color(0xffC1C1C1),
                    obscureText: true,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock_outlined, color: AppColors.kGreyColor),
                      hintText: 'Enter Password',
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(ForgetPasswordScreen.routeName);
                  },
                  child: const Text(
                    'Forget Password?',
                    // style: TextStyle(color: AppColors.kGreyColor),
                  ),
                ),
              ),
              25.sH,
              RoundedButton(
                text: 'Login',
                onPressed: () {
                   Navigator.of(context).pushReplacementNamed(TabsScreen.routeName);
                },
              ),
              50.sH,
            ],
          ),
        ),
      ),
    );
  }
}
