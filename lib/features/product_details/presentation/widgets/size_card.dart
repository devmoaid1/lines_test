import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/features/product_details/data/models/size_model.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/styles.dart';

class SizeCard extends StatelessWidget {
  final bool isSelected;
  final SizeModel size;
  final VoidCallback onPressed;
  const SizeCard({
    super.key,
    required this.isSelected,
    required this.size,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(left: 30.w),
        padding: EdgeInsets.symmetric(
          horizontal: 9.w,
        ),
        decoration: BoxDecoration(
            borderRadius: Layouts.kDefaultBorderRadius,
            border: Border.all(
                color: isSelected
                    ? AppColors.kAppPrimaryColor
                    : AppColors.kDescriptionTextColor,
                width: 1)),
        child: Center(
            child: Text(
          '${size.type!}(${size.price} SAR)',
          style: context.theme.textTheme.bodyLarge!.copyWith(
              color: isSelected
                  ? AppColors.kAppPrimaryColor
                  : AppColors.kDescriptionTextColor),
        )),
      ),
    );
  }
}
