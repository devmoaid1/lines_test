import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_colors.dart';
import '../theme/styles.dart';

class CustomClickableCard extends StatelessWidget {
  final Widget child;

  const CustomClickableCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 11.h),
      decoration: BoxDecoration(
          borderRadius: Layouts.kDefaultBorderRadius,
          border: Border.all(color: AppColors.kAppPrimaryColor, width: 2)),
      child: Center(child: child),
    );
  }
}
