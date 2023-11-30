import 'package:flutter/material.dart';
import 'package:sunversum_admin/components/elevated_container.dart';
import 'package:sunversum_admin/configuration/app_theme.dart';
import 'package:sunversum_admin/screens/tabs/interested_list/tabs_screen/active_customer.dart';
import 'package:sunversum_admin/screens/tabs/interested_list/tabs_screen/canceled.dart';
import 'package:sunversum_admin/screens/tabs/interested_list/tabs_screen/in_progress.dart';
import 'package:sunversum_admin/screens/tabs/interested_list/tabs_screen/new_list.dart';
import 'package:sunversum_admin/screens/tabs/interested_list/widgets/tab_button.dart';

class InterestedListScreen extends StatefulWidget {
  const InterestedListScreen({super.key});

  @override
  State<InterestedListScreen> createState() => _InterestedListScreenState();
}

class _InterestedListScreenState extends State<InterestedListScreen> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: const Color(0xffFAFAFA),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              20.sH,
              ElevatedContainer(
                elevation: 1,
                offset: const Offset(0, 1),
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TabButton(
                        title: 'New List',
                        onPressed: () {
                          setState(() {
                            index = 0;
                          });
                        },
                        selected: index == 0,
                      ),
                      10.sW,
                      TabButton(
                        title: 'In Progress',
                        onPressed: () {
                          setState(() {
                            index = 1;
                          });
                        },
                        selected: index == 1,
                      ),
                      10.sW,
                      TabButton(
                        title: 'Active Customer',
                        onPressed: () {
                          setState(() {
                            index = 2;
                          });
                        },
                        selected: index == 2,
                      ),
                      10.sW,
                      TabButton(
                        title: 'Canceled',
                        onPressed: () {
                          setState(() {
                            index = 3;
                          });
                        },
                        selected: index == 3,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(child: _selectedTab()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _selectedTab() {
    return index == 0
        ? const NewList()
        : index == 1
            ? const InProgress()
            : index == 2
                ? const ActiveCustomer()
                : const Canceled();
  }
}
