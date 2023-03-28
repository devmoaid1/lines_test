import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';

class ReviewUserDetails extends StatelessWidget {
  const ReviewUserDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 20.h,
          foregroundColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          backgroundImage: const AssetImage(AppAssets.userImagePath),
        ),
        5.w.hSpace,
        Text('أحمد ',
            style: context.theme.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.kHeadingsTextColor)),
        5.w.hSpace,
        Text('4, أبريل , 2022',
            style: context.theme.textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.kDescriptionTextColor))
      ],
    );
  }
}
