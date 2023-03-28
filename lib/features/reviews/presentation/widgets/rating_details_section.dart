import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/star_rating_row.dart';
import 'rating_indicator_row.dart';

class RatingDetailsSection extends StatelessWidget {
  const RatingDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      padding: Layouts.kDefaultPadding,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: Layouts.kSecondaryBorderRadius,
          color: AppColors.kCardBackgroundColor),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '4.0',
                style: context.theme.textTheme.headlineLarge!
                    .copyWith(color: AppColors.kHeadingsTextColor),
              ),
              5.h.vSpace,
              const StarRatingRow(rating: 4),
              5.h.vSpace,
              Text(
                '5 تقييمات',
                style: context.theme.textTheme.bodyMedium!
                    .copyWith(color: AppColors.kDescriptionTextColor),
              )
            ],
          ),
          35.w.hSpace,
          Expanded(
            child: Column(
              children: [
                25.h.vSpace,
                SizedBox(
                  height: 100.h,
                  child: ListView.builder(
                    itemCount: 5,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return const RatingIndicatorRow(rating: 12);
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
