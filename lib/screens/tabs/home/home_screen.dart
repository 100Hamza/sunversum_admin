import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sunversum_admin/components/custom_text_button.dart';
import 'package:sunversum_admin/components/elevated_container.dart';
import 'package:sunversum_admin/configuration/app_images.dart';
import 'package:sunversum_admin/configuration/app_theme.dart';


import '../../../configuration/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    ElevatedContainer(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Number of Distributers',
                                  style: TextStyle(
                                      color: Color(0xffB2B2B2),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                12.sH,
                                const Text(
                                  '203',
                                  style: TextStyle(
                                      fontSize: 36,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.kPrimaryColor),
                                )
                              ],
                            ),
                          ),
                          Image.asset(
                            AppImages.usersThree,
                            height: 96,
                            width: 96,
                          )
                        ],
                      ),
                    ),
                    20.sH,
                    ElevatedContainer(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Project Sold',
                                  style: TextStyle(
                                      color: Color(0xffB2B2B2),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                12.sH,
                                const Text(
                                  '320',
                                  style: TextStyle(
                                      fontSize: 36,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.kPrimaryColor),
                                )
                              ],
                            ),
                          ),
                          Image.asset(
                            AppImages.files,
                            height: 96,
                            width: 96,
                          )
                        ],
                      ),
                    ),
                    10.sH,
                    SizedBox(
                      height: 160,
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedContainer(
                              padding: const EdgeInsets.all(5),
                              width: 110,
                              height: 140,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.file_copy_outlined  ,
                                    color: AppColors.kPrimaryColor,
                                  ),
                                  8.sH,
                                  const Text(
                                    'In Progress',
                                    style: TextStyle(
                                        color: Color(0xffB2B2B2),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),
                                  ),
                                  5.sH,
                                  const FittedBox(
                                      child: Text(
                                        '84',
                                        style: TextStyle(
                                            color: AppColors.kPrimaryColor,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500),
                                      ))
                                ],
                              ),
                            ),
                          ),
                          20.sW,
                          Expanded(
                            child: ElevatedContainer(
                              padding: const EdgeInsets.all(5),
                              width: 110,
                              height: 140,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.cancel_presentation_outlined,
                                    color: AppColors.kPrimaryColor,
                                  ),
                                  8.sH,
                                  const Text(
                                    'Canceled',
                                    style: TextStyle(
                                        color: Color(0xffB2B2B2),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),
                                  ),
                                  5.sH,
                                  const FittedBox(
                                      child: Text(
                                        '84',
                                        style: TextStyle(
                                            color: AppColors.kPrimaryColor,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Recently Added Customer',
                            style: TextStyle(
                              color: Color(0xffB2B2B2),
                            ),
                          ),
                        ),
                        CustomTextButton(
                          horizontalPadding: 6,
                          verticalPadding: 6,
                          title: 'View all',
                          onPressed: () {},
                        )
                      ],
                    ),
                    10.sH,
                    ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) =>  Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: ElevatedContainer(
                          padding: EdgeInsets.zero,
                          elevation: 1,
                          offset: const Offset(0, 1),
                          child: const ListTile(
                            horizontalTitleGap: 12,
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            leading: Icon(
                              Icons.person_add_alt_1_outlined,
                              color: AppColors.kPrimaryColor,
                            ),
                            title: Text(
                              'Marsh Maxwell',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                            ),
                          ),
                        ),
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
