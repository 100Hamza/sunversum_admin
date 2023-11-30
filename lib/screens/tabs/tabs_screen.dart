import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sunversum_admin/screens/tabs/distributers/distributers_screen.dart';
import 'package:sunversum_admin/screens/tabs/interested_list/interested_list_screen.dart';
import 'package:sunversum_admin/screens/tabs/profile/profile_screen.dart';
import '../../configuration/app_colors.dart';
import 'home/home_screen.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = 'tabs';
  final int currentPageIndex;
  const TabsScreen({Key? key, this.currentPageIndex = 0}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late int _selectedIndex;
  @override
  void initState() {
    _selectedIndex = widget.currentPageIndex;
    super.initState();
  }

  final List<Widget> _pages = [
    const HomeScreen(),
    const InterestedListScreen(),
    const DistributorsScreen(),
    const ProfileScreen(),
  ];
  List<BottomNavigationBarItem> getTabsData() {
    return [
      const BottomNavigationBarItem(
          activeIcon: Icon(Icons.home_rounded),
          icon: Icon(Icons.home_outlined),
          label: 'Home'),
      const BottomNavigationBarItem(
          activeIcon: Icon(Icons.list_alt),
          icon: Icon(Icons.list_alt ),
          label: 'Interested List'),
      const BottomNavigationBarItem(
          activeIcon: Icon(Icons.person_add_alt_outlined),
          icon: Icon(Icons.person_add_alt_outlined ),
          label: 'Distributers'),
      const BottomNavigationBarItem(
        activeIcon: Icon(CupertinoIcons.person_circle_fill),
        icon: Icon(
          CupertinoIcons.person_circle,
        ),
        label: 'Profile',
      ),
    ];
  }

  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, -1),
                blurRadius: 4,
                color: AppColors.kShadowColor,
              ),
            ],
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _selectedIndex,
            selectedItemColor: AppColors.kPrimaryColor,
            unselectedItemColor: AppColors.kGreyColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: _selectPage,
            items: getTabsData(),
          ),
        ),
      ),
    );
  }
}
