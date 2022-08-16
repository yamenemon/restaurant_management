import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_management/utils/extention.dart';

class IntroRight extends StatelessWidget {
  const IntroRight({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.h),
      child: Container(
        color: Colors.white,
        width: context.width * 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Text(
                "Description",
                style: GoogleFonts.roboto(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                  style: GoogleFonts.rubik(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                  ),
                  "In a former tea warehouse on the corner of Shoreditch High Street and Bethnal Green Road, Pizza East Shoreditch serves seasonal smalls, wood-oven dishes, pizzas and some of the best cured meats & cheese in London. Walk-in space available or come by for a drink in the deli bar"),
            ),
            Expanded(
              flex: 1,
              child: Text("Meals",
                  style: GoogleFonts.roboto(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Expanded(
              flex: 5,
              child: Text(
                  style: GoogleFonts.rubik(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                  ),
                  "In a former tea warehouse on the corner of Shoreditch High Street and Bethnal Green Road, Pizza East Shoreditch serves seasonal smalls, wood-oven dishes, pizzas and some of the best cured meats & cheese in London. Walk-in space available or come by for a drink in the deli bar"),
            ),
          ],
        ),
      ),
    );
  }
}
