import 'package:flutter/material.dart';
import 'package:sunversum_admin/components/circular_image.dart';
import 'package:sunversum_admin/components/elevated_container.dart';
import 'package:sunversum_admin/configuration/app_colors.dart';
import 'package:sunversum_admin/configuration/app_theme.dart';
import 'package:sunversum_admin/screens/tabs/profile/widgets/profile_toggle_button.dart';

import '../../../configuration/app_images.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = 'profile';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var isEditable = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedContainer(
                offset: const Offset(0, 1),
                elevation: 1,
                child: Column(
                  children: [
                    CircularImage(
                      imageUrl: AppImages.profile,
                      size: 90,
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    offset: const Offset(0, 1),
                                    color: AppColors.kShadowColor)
                              ]),
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                    16.sH,
                    const Text(
                      'Michael Mitchel',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      'Admin',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffB2B2B2),
                      ),
                    ),
                  ],
                ),
              ),
              30.sH,
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      ' Personal Information',
                      style: TextStyle(
                        color: Color(0xffB2B2B2),
                      ),
                    ),
                  ),
                  ProfileToggleButton(
                    title: isEditable ? 'Save' : 'Edit',
                    icon:
                        isEditable ? Icons.save_outlined : Icons.edit_outlined,
                    onPressed: () {
                      setState(() {
                        isEditable = !isEditable;
                      });
                    },
                  ),
                ],
              ),
              24.sH,
              ElevatedContainer(
                padding: const EdgeInsets.all(16),
                elevation: 1,
                offset: const Offset(0, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'First Name',
                      style:
                          TextStyle(fontSize: 12, color: AppColors.kGreyColor),
                    ),
                    4.sH,
                    TextFormField(
                      enabled: isEditable,
                      readOnly: !isEditable,
                      // cursorColor: const Color(0xffC1C1C1),
                      initialValue: 'Michael',
                      decoration: const InputDecoration(
                        hintText: 'Enter First Name',
                      ),
                    ),
                    12.sH,
                    const Text(
                      'Last Name',
                      style:
                          TextStyle(fontSize: 12, color: AppColors.kGreyColor),
                    ),
                    4.sH,
                    TextFormField(
                      enabled: isEditable,
                      readOnly: !isEditable,
                      cursorColor: const Color(0xffC1C1C1),
                      initialValue: 'Michael',
                      decoration: const InputDecoration(
                        hintText: 'Enter Last Name',
                      ),
                    ),
                    12.sH,
                    const Text(
                      'Email',
                      style:
                          TextStyle(fontSize: 12, color: AppColors.kGreyColor),
                    ),
                    4.sH,
                    TextFormField(
                      enabled: isEditable,
                      readOnly: !isEditable,
                      cursorColor: const Color(0xffC1C1C1),
                      initialValue: 'Micheal2437@newnime.com',
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: 'Enter Email',
                      ),
                    ),
                    12.sH,
                    const Text(
                      'Address',
                      style:
                          TextStyle(fontSize: 12, color: AppColors.kGreyColor),
                    ),
                    4.sH,
                    TextFormField(
                      enabled: isEditable,
                      readOnly: !isEditable,
                      cursorColor: const Color(0xffC1C1C1),
                      initialValue: '7344 Birchpond Street',
                      decoration: const InputDecoration(
                        hintText: 'Enter Address',
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
