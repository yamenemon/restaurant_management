import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_management/utils/extention.dart';

class CartListScreen extends StatelessWidget {
  const CartListScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.w, right: 5.w),
      child: Container(
        width: 100.w,
        color: Colors.white,
      ),
    );
  }
}
