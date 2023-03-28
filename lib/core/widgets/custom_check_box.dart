import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_assets.dart';
import '../theme/app_colors.dart';
import 'custom_svg_icon.dart';

class CustomCheckBox extends StatelessWidget {
  final bool isActive;
  const CustomCheckBox({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15.w,
      height: 15.h,
      decoration: BoxDecoration(
        color: isActive ? AppColors.kAppPrimaryColor : Colors.transparent,
        borderRadius: BorderRadius.circular(4),
        border:
            isActive ? null : Border.all(color: AppColors.kCheckBoxBorderColor),
      ),
      child: isActive
          ? const Center(
              child: CustomSvgIcon(iconPath: AppAssets.tickIcon),
            )
          : null,
    );
  }
}
