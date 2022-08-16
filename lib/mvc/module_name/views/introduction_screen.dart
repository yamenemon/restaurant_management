import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_management/mvc/module_name/views/components/intro_left.dart';
import 'package:restaurant_management/mvc/module_name/views/components/intro_right.dart';
import 'package:restaurant_management/mvc/module_name/views/menu_list_screen.dart';
import 'package:restaurant_management/utils/extention.dart';
import 'package:restaurant_management/utils/navigation_service.dart';
import 'package:restaurant_management/utils/styles/k_colors.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: Container(
              height: context.height * 0.7,
              // width: context.width * 0.7,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IntroLeft(),
                  IntroRight(),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              MenuListScreen().push(context);
            },
            child: Card(
              shadowColor: KColor.grey.color.withOpacity(0.5),
              color: KColor.baseColor.color,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                child: Text(
                  "LETS GET START",
                  style: GoogleFonts.roboto(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
