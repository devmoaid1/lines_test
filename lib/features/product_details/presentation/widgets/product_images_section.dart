import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/constants/app_assets.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/theme/app_colors.dart';
import 'package:lines_test/core/widgets/custom_image.dart';

import 'custom_dots_indicator.dart';
import 'product_actions_column.dart';

class ProductImagesSection extends StatelessWidget {
  const ProductImagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'عطر شانيل 5 مل',
          style: context.theme.textTheme.bodyMedium!
              .copyWith(color: AppColors.kSubHeadingsTextColor),
        ),
        10.h.vSpace,
        Stack(
          children: [
            CustomImage(
              path: AppAssets.productImagePath,
              width: 323.w,
              height: 287.h,
            ),
            Positioned(
              left: 0,
              top: 79.h,
              child: const ProductActionsColumn(),
            ),
            Positioned(
              bottom: 15.h,
              left: 0,
              right: 0,
              child: const CustomDotsIndicator(
                count: 3,
                currentPosition: 2,
              ),
            )
          ],
        ),
        10.h.vSpace,
      ],
    );
  }
}
