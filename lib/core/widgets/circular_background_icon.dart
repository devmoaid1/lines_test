import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/widgets/custom_svg_icon.dart';

class CircularBackgroundIcon extends StatelessWidget {
  final String iconPath;
  const CircularBackgroundIcon({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      height: 30.h,
      padding: EdgeInsets.all(7.h),
      decoration:
          const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: CustomSvgIcon(iconPath: iconPath),
    );
  }
}
