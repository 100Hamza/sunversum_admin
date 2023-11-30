import 'package:flutter/material.dart';
import 'package:sunversum_admin/configuration/app_theme.dart';

import '../../../../configuration/app_images.dart';

class SaveConfirmationScreen extends StatelessWidget {
  const SaveConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Image.asset(
                AppImages.successImg,
                height: 70,
                width: 70,
              ),
              20.sH,
              const Text(
                'Your changes has been saved successfully',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                  color: Color(0xff2E2E2E),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
