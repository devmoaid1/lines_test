import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_svg_icon.dart';

class ProductRatingRow extends StatelessWidget {
  const ProductRatingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomSvgIcon(iconPath: AppAssets.starFilledIcon),
        2.w.hSpace,
        Text(
          '5.0',
          style: context.theme.textTheme.bodySmall!
              .copyWith(color: AppColors.kRatingColor),
        ),
        5.w.hSpace,
        Text(
          ' 5 تقييمات',
          style: context.theme.textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.kDescriptionTextColor),
        ),
      ],
    );
  }
}
