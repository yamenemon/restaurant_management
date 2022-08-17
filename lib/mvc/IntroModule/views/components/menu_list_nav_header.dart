import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_management/utils/styles/k_colors.dart';

class MenuListNavHeader extends StatelessWidget {
  const MenuListNavHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: AppBar(
        title: Row(
          children: [
            Text(
              "Pizza East Portobello",
              style: GoogleFonts.inter(
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
                margin: EdgeInsets.all(10),
                shadowColor: KColor.grey.color.withOpacity(0.5),
                color: KColor.baseColor.color,
                child: Center(
                  widthFactor: 1.5,
                  child: Icon(
                    Icons.refresh,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
              Card(
                shadowColor: KColor.grey.color.withOpacity(0.5),
                color: KColor.baseColor.color,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                  child: Text(
                    "Select Table",
                    style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
