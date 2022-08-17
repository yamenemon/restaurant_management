import 'package:flutter/material.dart';

enum KColor {
  primary,
  baseColor,
  secondary,
  accent,
  red,
  white,
  black,
  grey,
  divider,
  fill,
  transparent,
  enableBorder,
  fromText,
  statusBar,
  addbtn,
  formtextFill,
  dashBack,
  drawerHeader,
  dropDownfill,
  bookingText,
  spinshGrey,
}

extension KColorExtention on KColor {
  Color get color {
    switch (this) {
      case KColor.primary:
        return Colors.blue;
      case KColor.baseColor:
        return Color(0xFFFC8019);
      case KColor.secondary:
        return Color(0xFFC8161D);
      case KColor.spinshGrey:
        return Color(0xFF9F9F9E);
      case KColor.accent:
        return Colors.blue;
      case KColor.red:
        return Color(0xffE42B2B);
      case KColor.grey:
        return Color(0xFF808080);
      case KColor.addbtn:
        return Color(0xFFA8CFFF);
      case KColor.black:
        return Colors.black;
      case KColor.divider:
        return Color(0xFFF8F8F7);
      case KColor.enableBorder:
        return Color(0xffE0E0E0);
      case KColor.fill:
        return Color.fromARGB(255, 247, 246, 246);
      case KColor.fromText:
        return Color(0xff7B7A7A);
      case KColor.white:
        return Colors.white;
      case KColor.statusBar:
        return Color(0xff3E95FF);
      case KColor.transparent:
        return Colors.transparent;
      case KColor.formtextFill:
        return Color(0xffFCFCFC);
      case KColor.drawerHeader:
        return Color(0xFF5EA7FF);
      case KColor.dropDownfill:
        return Color(0xFFFCFCFC);
      case KColor.dashBack:
        return Color(0xffF8F8F8);
      case KColor.bookingText:
        return Color(0xff808080);
      default:
        return Colors.blue;
    }
  }
}
