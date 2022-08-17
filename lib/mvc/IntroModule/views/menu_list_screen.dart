import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_management/mvc/IntroModule/views/components/menu_list_nav_header.dart';
import 'package:restaurant_management/mvc/IntroModule/views/components/menu_navigation_rail.dart';
import 'package:restaurant_management/utils/extention.dart';
import 'package:restaurant_management/utils/styles/styles.dart';

class MenuListScreen extends StatelessWidget {
  const MenuListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColor.grey.color.withOpacity(0.2),
      body: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            MenuListNavHeader(),
            Divider(
              height: 1,
            ),
            Expanded(
              child: MenuNavigationRail(),
            ),
            Container(
              height: 5.h,
            ),
          ],
        ),
      ),
    );
  }
}
