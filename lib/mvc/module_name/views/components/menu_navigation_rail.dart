import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_management/utils/styles/styles.dart';

class MenuNavigationRail extends StatefulWidget {
  const MenuNavigationRail({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuNavigationRail> createState() => _MenuNavigationRailState();
}

class _MenuNavigationRailState extends State<MenuNavigationRail> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Container(
            width: 35.w,
            child: NavigationRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              labelType: NavigationRailLabelType.selected,
              destinations: <NavigationRailDestination>[
                navigationRail("Home"),
                navigationRail("Customers"),
                navigationRail("Tables"),
                navigationRail("Cashier"),
                navigationRail("Orders"),
                navigationRail("Reports"),
                navigationRail("Settings"),
              ],
            ),
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            child: Center(
              child: Text('selectedIndex: $_selectedIndex'),
            ),
          )
        ],
      ),
    );
  }

  NavigationRailDestination navigationRail(String menuName) {
    return NavigationRailDestination(
      icon: Container(
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: KColor.grey.color),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              KAssetName.home_inactive.imagePath,
            ),
            Text(menuName),
          ],
        ),
      ),
      selectedIcon: Container(
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
          color: KColor.baseColor.color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: KColor.baseColor.color.withOpacity(0.8),
            width: 2,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              KAssetName.home_active.imagePath,
              color: KColor.baseColor.color.withOpacity(0.8),
            ),
            Text(
              menuName,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                color: KColor.baseColor.color.withOpacity(0.8),
                height: 1.8,
              ),
            ),
          ],
        ),
      ),
      label: Container(),
    );
  }
}
