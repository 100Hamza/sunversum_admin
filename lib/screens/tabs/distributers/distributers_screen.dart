import 'package:flutter/material.dart';
import 'package:sunversum_admin/components/elevated_container.dart';
import 'package:sunversum_admin/configuration/app_colors.dart';
import 'package:sunversum_admin/configuration/app_theme.dart';
import 'package:sunversum_admin/screens/tabs/distributers/distributor_details.dart';

import '../../../components/circular_image.dart';
import '../../../configuration/app_images.dart';

class DistributorsScreen extends StatelessWidget {
  const DistributorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: const Color(0xffFAFAFA),
        title: const Text(
          'Distributors',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.kCanceledStatusColor),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: const Color(0xffFAFAFA),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding:
                const EdgeInsets.symmetric(horizontal: 4),
                itemCount: 12,
                itemBuilder: (context, index) =>  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(DistributorDetails.routeName);
                    },
                    child: ElevatedContainer(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      elevation: 1,
                      offset: const Offset(0, 0),
                      child:  const ListTile(
                        titleAlignment: ListTileTitleAlignment.titleHeight,
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 12),
                        leading: Material(
                          elevation: 2.0, // Set the elevation value as needed
                          shape: CircleBorder(),
                          clipBehavior: Clip.antiAlias,
                          child: CircleAvatar(
                            foregroundImage: NetworkImage(AppImages.profile),
                            backgroundImage: AssetImage(AppImages.successImg),
                          ),
                        ),
                        title: Text(
                          'Marsh Maxwell',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                        trailing: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                            color: AppColors.kNewListArrowIconColor,
                          ),
                        ),
                        horizontalTitleGap: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            10.sH
          ],
        ),
      ),
    );
  }
}
