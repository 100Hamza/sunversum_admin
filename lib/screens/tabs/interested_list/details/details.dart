import 'package:flutter/material.dart';
import 'package:sunversum_admin/components/elevated_container.dart';
import 'package:sunversum_admin/components/rounded_border_button.dart';
import 'package:sunversum_admin/components/rounded_button.dart';
import 'package:sunversum_admin/configuration/app_colors.dart';
import 'package:sunversum_admin/configuration/app_theme.dart';

class Details extends StatefulWidget {
  int? screenIndex;
  String? appBarTitle;
  static const routeName = 'details';
  Details({super.key, this.screenIndex, this.appBarTitle});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  var isEditable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xffFAFAFA),
        title: Text(
          widget.appBarTitle.toString(),
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              ' Personal Information',
              style: TextStyle(
                color: Color(0xffB2B2B2),
              ),
            ),
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
                    'Telephone Number',
                    style: TextStyle(fontSize: 12, color: AppColors.kGreyColor),
                  ),
                  4.sH,
                  const Text(
                    'XXX-XXXXXXXXXX-X',
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
                  const Text(
                    'Postal Code',
                    style: TextStyle(fontSize: 12, color: AppColors.kGreyColor),
                  ),
                  4.sH,
                  const Text(
                    'XXXXXX',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  12.sH,
                  const Text(
                    'Near',
                    style: TextStyle(fontSize: 12, color: AppColors.kGreyColor),
                  ),
                  4.sH,
                  const Text(
                    'XXXXXXXXXXX',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  12.sH,
                  const Text(
                    'City',
                    style: TextStyle(fontSize: 12, color: AppColors.kGreyColor),
                  ),
                  4.sH,
                  const Text(
                    'XXXXXXXXXXXXX',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                ],
              ),
            ),
            24.sH,
            _tabsScreen()
          ],
        ),
      ),
    );
  }

  Widget _tabsScreen() {
    return widget.screenIndex == 0
        ? Row(
            children: [
              Expanded(
                child: RounderBorderButton(
                  onPressed: () {},
                  title: 'Canceled',
                ),
              ),
              16.sW,
              Expanded(
                child: RoundedButton(
                  text: 'In Progress',
                  onPressed: () {
                    // Navigator.of(context)..pop()..pushReplacementNamed(TabsScreen.routeName);
                  },
                ),
              ),
            ],
          )
        : widget.screenIndex == 1
            ? Row(
                children: [
                  Expanded(
                    child: RounderBorderButton(
                      onPressed: () {},
                      title: 'Canceled',
                    ),
                  ),
                  16.sW,
                  Expanded(
                    child: RoundedButton(
                      text: 'Become a Customer',
                      onPressed: () {
                        // Navigator.of(context)..pop()..pushReplacementNamed(TabsScreen.routeName);
                      },
                    ),
                  ),
                ],
              )
            : widget.screenIndex == 2
                ? RounderBorderButton(
                    onPressed: () {},
                    title: 'Status: Active',
                    textColor: AppColors.kActiveStatusColor,
                    borderColor: AppColors.kStatusButtonBorderColor,
                    bgColor: const Color(0xffFAFAFA),
                    isElevation: true,
                  )
                : RounderBorderButton(
                    onPressed: () {},
                    title: 'Status: Canceled',
                    textColor: AppColors.kCanceledStatusColor,
                    borderColor: AppColors.kStatusButtonBorderColor,
                    bgColor: const Color(0xffFAFAFA),
                    isElevation: true,
                  );
  }
}
