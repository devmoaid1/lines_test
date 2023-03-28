import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/styles.dart';

class SizeCard extends StatelessWidget {
  final bool isSelected;
  final String size;
  const SizeCard({
    super.key,
    required this.isSelected,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30.w),
      padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 11.h),
      decoration: BoxDecoration(
          borderRadius: Layouts.kDefaultBorderRadius,
          border: Border.all(
              color: isSelected
                  ? AppColors.kAppPrimaryColor
                  : AppColors.kDescriptionTextColor,
              width: 2)),
      child: Center(
          child: Text(
        size,
        style: context.theme.textTheme.bodyLarge!.copyWith(
            color: isSelected
                ? AppColors.kAppPrimaryColor
                : AppColors.kDescriptionTextColor),
      )),
    );
  }
}
