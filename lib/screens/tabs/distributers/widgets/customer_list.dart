import 'package:flutter/material.dart';
import 'package:sunversum_admin/components/elevated_container.dart';
import 'package:sunversum_admin/configuration/app_colors.dart';
import 'package:sunversum_admin/configuration/app_images.dart';
import 'package:sunversum_admin/screens/tabs/interested_list/details/details.dart';

class CustomerList extends StatelessWidget {
  const CustomerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding:
      const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
      itemCount: 12,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Details(appBarTitle: 'Marsh Maxwell' , screenIndex: 2),));
          },
          child: ElevatedContainer(
            padding: EdgeInsets.zero,
            elevation: 1,
            offset: const Offset(0, 0),
            child: const ListTile(
              titleAlignment: ListTileTitleAlignment.titleHeight,
              contentPadding:
              EdgeInsets.symmetric(horizontal: 12),
              leading: Image(image: AssetImage(AppImages.userEqual), height: 25,),
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
    );
  }
}
