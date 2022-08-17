import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_management/mvc/HomeModule/Views/home_screen.dart';
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
            width:
                120, //It will static 100 dont use screen util because according to screen it becomes larger
            child: NavigationRail(
              useIndicator: false,
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
          VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: Center(
              child: getNavigationRailScreen(_selectedIndex),
            ),
          )
        ],
      ),
    );
  }

  Widget getNavigationRailScreen(int index) {
    switch (index) {
      case 0:
        return HomeScreen();
      case 1:
        return Text('selectedIndex: $_selectedIndex');
      case 2:
        return Text('selectedIndex: $_selectedIndex');
      case 3:
        return Text('selectedIndex: $_selectedIndex');
      case 4:
        return Text('selectedIndex: $_selectedIndex');
      case 5:
        return Text('selectedIndex: $_selectedIndex');
      default:
        break;
    }
    return Container();
  }

  NavigationRailDestination navigationRail(String menuName) {
    return NavigationRailDestination(
      icon: Container(
        width: double.infinity,
        height: 70.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: KColor.spinshGrey.color),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              KAssetName.home_inactive.imagePath,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              menuName,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                color: KColor.spinshGrey.color,
                height: 1.8,
              ),
            ),
          ],
        ),
      ),
      selectedIcon: Container(
        width: double.infinity,
        height: 70.h,
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
              style: GoogleFonts.inter(
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
