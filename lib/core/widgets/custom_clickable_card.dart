import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/utils/enums/button_type.dart';

import '../theme/app_colors.dart';
import '../theme/styles.dart';

class CustomClickableCard extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final EdgeInsets? padding;
  final double? height;
  final ButtonType buttonType;

  const CustomClickableCard(
      {super.key,
      required this.child,
      required this.onTap,
      this.padding,
      this.height,
      required this.buttonType});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        padding:
            padding ?? EdgeInsets.symmetric(horizontal: 13.w, vertical: 11.h),
        decoration: BoxDecoration(
            color: buttonType == ButtonType.filled
                ? AppColors.kAppPrimaryColor
                : Colors.transparent,
            borderRadius: Layouts.kDefaultBorderRadius,
            border: buttonType == ButtonType.filled
                ? null
                : Border.all(color: AppColors.kAppPrimaryColor, width: 1)),
        child: Center(child: child),
      ),
    );
  }
}
