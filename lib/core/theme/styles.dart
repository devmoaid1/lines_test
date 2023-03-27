import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static TextStyle kBodyExtraSmallTextStyle =
      TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500);

  static TextStyle kBodySmallTextStyle =
      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500);
  static TextStyle kBodyMediumTextStyle =
      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500);
  static TextStyle kBodyLargeTextStyle =
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500);
  static TextStyle kBodyExtraLargeTextStyle =
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500);

  static TextStyle kBodyHeadlineTextStyle =
      TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500);
}

abstract class Layouts {
  static EdgeInsets kDefaultPadding = EdgeInsets.symmetric(horizontal: 25.w);
  static EdgeInsets kButtonPadding = EdgeInsets.symmetric(vertical: 11.h);
  static BorderRadius kDefaultBorderRadius = BorderRadius.circular(10.r);
  static BorderRadius kSmallBorderRadius = BorderRadius.circular(8.r);
}
