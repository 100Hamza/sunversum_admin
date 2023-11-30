import 'package:flutter/material.dart';
import 'package:sunversum_admin/components/rounded_button.dart';
import 'package:sunversum_admin/configuration/app_colors.dart';
import 'package:sunversum_admin/configuration/app_images.dart';
import 'package:sunversum_admin/configuration/app_theme.dart';
import 'package:sunversum_admin/screens/authentication/login_screen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  static const routeName = 'forget';
  const ForgetPasswordScreen({super.key});

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
                'Set up your new password and keep those virtual doors locked tight',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xffB2B2B2),
                ),
              ),
              50.sH,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'New Password',
                    style: TextStyle(fontSize: 12, color: AppColors.kGreyColor),
                  ),
                  4.sH,
                  TextFormField(
                    cursorColor: const Color(0xffC1C1C1),
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Enter New Password',
                    ),
                  ),
                  24.sH,
                  const Text(
                    'Confirm',
                    style: TextStyle(fontSize: 12, color: AppColors.kGreyColor),
                  ),
                  4.sH,
                  TextFormField(
                    cursorColor: const Color(0xffC1C1C1),
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Renter Password',
                    ),
                  ),
                ],
              ),
              40.sH,
              RoundedButton(
                text: 'Save and Continue',
                onPressed: () {
                  // Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
