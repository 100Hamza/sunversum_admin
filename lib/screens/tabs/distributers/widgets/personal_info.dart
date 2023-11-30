import 'package:flutter/material.dart';
import 'package:sunversum_admin/components/elevated_container.dart';
import 'package:sunversum_admin/configuration/app_colors.dart';
import 'package:sunversum_admin/configuration/app_theme.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        24.sH,
        ElevatedContainer(
          boxAlignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(16),
          elevation: 1,
          offset: const Offset(0, 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'First Name',
                style: TextStyle(fontSize: 12, color: AppColors.kGreyColor),
              ),
              4.sH,
              const Text(
                'Marsh',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
              12.sH,
              const Text(
                'Last Name',
                style: TextStyle(fontSize: 12, color: AppColors.kGreyColor),
              ),
              4.sH,
              const Text(
                'Maxwell',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
              12.sH,
              const Text(
                'Email',
                style: TextStyle(fontSize: 12, color: AppColors.kGreyColor),
              ),
              4.sH,
              const Text(
                'MarshMaxwell@gmail.com',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
              12.sH,
              const Text(
                'Address',
                style: TextStyle(fontSize: 12, color: AppColors.kGreyColor),
              ),
              4.sH,
              const Text(
                '7344 Birchpond Street',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
              12.sH,
              const Row(
                children: [
                  Text(
                    'Postal Code',
                    style: TextStyle(fontSize: 12, color: AppColors.kGreyColor),
                  ),
                  Text(
                    ' *',
                    style: TextStyle(fontSize: 14, color: Colors.red),
                  ),
                ],
              ),
              4.sH,
              const Text(
                'XXXXXX',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
              12.sH,
              const Row(
                children: [
                  Text(
                    'Telephone Number',
                    style: TextStyle(fontSize: 12, color: AppColors.kGreyColor),
                  ),
                  Text(
                    ' *',
                    style: TextStyle(fontSize: 14, color: Colors.red),
                  ),
                ],
              ),
              4.sH,
              const Text(
                'XXX-XXXXXXXXXX-X',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
              12.sH,
              const Row(
                children: [
                  Text(
                    'ID Number',
                    style: TextStyle(fontSize: 12, color: AppColors.kGreyColor),
                  ),
                  Text(
                    ' *',
                    style: TextStyle(fontSize: 14, color: Colors.red),
                  ),
                ],
              ),
              4.sH,
              const Text(
                'XXXXXXXXXXX',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
              12.sH,
              const Row(
                children: [
                  Text(
                    'Tax ID',
                    style: TextStyle(fontSize: 12, color: AppColors.kGreyColor),
                  ),
                  Text(
                    ' *',
                    style: TextStyle(fontSize: 14, color: Colors.red),
                  ),
                ],
              ),
              4.sH,
              const Text(
                'XXXXXXXXXXXXX',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
              12.sH,
              const Row(
                children: [
                  Text(
                    'Bank Account Number',
                    style: TextStyle(fontSize: 12, color: AppColors.kGreyColor),
                  ),
                  Text(
                    ' *',
                    style: TextStyle(fontSize: 14, color: Colors.red),
                  ),
                ],
              ),
              4.sH,
              const Text(
                'DEXX XXXXXXXXX XXXXXXXXXX XXX',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
