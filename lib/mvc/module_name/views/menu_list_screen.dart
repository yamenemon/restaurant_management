import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_management/global/widget/global_button.dart';
import 'package:restaurant_management/mvc/module_name/views/components/intro_left.dart';
import 'package:restaurant_management/mvc/module_name/views/components/intro_right.dart';
import 'package:restaurant_management/mvc/module_name/views/components/menu_navigation_rail.dart';
import 'package:restaurant_management/utils/extention.dart';
import 'package:restaurant_management/utils/styles/styles.dart';

class MenuListScreen extends StatelessWidget {
  const MenuListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColor.grey.color.withOpacity(0.2),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 0.w),
                child: AppBar(
                  title: Row(
                    children: [
                      Text(
                        "Pizza East Portobello",
                        style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            color: KColor.black.color,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 10.w),
                      Container(
                        width: 120.w,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            // labelText: 'User Name',
                            hintText: 'Search your food',
                          ),
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    Row(
                      children: [
                        Card(
                          shadowColor: KColor.grey.color.withOpacity(0.5),
                          color: KColor.baseColor.color,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.w, vertical: 5.h),
                            child: Center(
                              child: Icon(
                                Icons.refresh,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          shadowColor: KColor.grey.color.withOpacity(0.5),
                          color: KColor.baseColor.color,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 5.h),
                            child: Text(
                              "Select Table",
                              style: GoogleFonts.roboto(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: MenuNavigationRail(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
