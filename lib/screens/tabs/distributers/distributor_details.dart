import 'package:flutter/material.dart';
import 'package:sunversum_admin/components/circular_image.dart';
import 'package:sunversum_admin/components/elevated_container.dart';
import 'package:sunversum_admin/components/rounded_border_button.dart';
import 'package:sunversum_admin/configuration/app_colors.dart';
import 'package:sunversum_admin/configuration/app_images.dart';
import 'package:sunversum_admin/configuration/app_theme.dart';
import 'package:sunversum_admin/screens/tabs/distributers/widgets/customer_list.dart';
import 'package:sunversum_admin/screens/tabs/distributers/widgets/personal_info.dart';
import 'package:sunversum_admin/screens/tabs/interested_list/widgets/tab_button.dart';


class DistributorDetails extends StatefulWidget {
  static const routeName = 'distributor_details';
  const DistributorDetails({super.key});

  @override
  State<DistributorDetails> createState() => _DistributorDetailsState();
}

class _DistributorDetailsState extends State<DistributorDetails> {
  var index = 0;
  bool isBlocked = false;
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
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                offset: const Offset(0, 1),
                elevation: 1,
                child: Column(
                  children: [
                    InkWell(
                      child: Container(
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          child: const Icon(Icons.arrow_back)),
                      onTap: (){
                        Navigator.pop(context);

                        // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                        //     builder: (context) => const TabsScreen(currentPageIndex: 2)), (Route route) => false);

                      },
                    ),
                    10.sH,
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
                      'Distributor',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffB2B2B2),
                      ),
                    ),
                    20.sH,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RounderBorderButton(
                          onPressed: () {
                            setState(() {
                              isBlocked = !isBlocked;
                            });
                          },
                          title: isBlocked? 'Unblock' : 'Block',
                          height: 38,
                        ),
                        10.sW,
                        RounderBorderButton(
                          borderColor: Colors.red,
                          onPressed: () {},
                          title: 'Delete',
                          height: 38,
                          textColor: Colors.red,
                        ),

                      ],
                    ),
                    20.sH,
                  ],
                ),
              ),
              30.sH,
              ElevatedContainer(
                elevation: 1,
                offset: const Offset(0, 1),
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TabButton(
                        title: 'Personal Information',
                        onPressed: () {
                          setState(() {
                            index = 0;
                          });
                        },
                        selected: index == 0,
                      ),
                      10.sW,
                      TabButton(
                        title: 'Customer List',
                        onPressed: () {
                          setState(() {
                            index = 1;
                          });
                        },
                        selected: index == 1,
                      ),
                    ],
                  ),
                ),
              ),
              _tabScreen()
            ],
          ),
        ),
      ),
    );
  }

  Widget _tabScreen()
  {
    return index == 0 ? const PersonalInformation() : const CustomerList();
  }

}
