import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/star_rating_row.dart';

class RatingIndicatorRow extends StatelessWidget {
  final num rating;
  const RatingIndicatorRow({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.h),
      child: Row(
        children: [
          StarRatingRow(
            rating: 5,
            height: 9.h,
            width: 9.w,
          ),
          5.w.hSpace,
          Stack(
            children: [
              Container(
                height: 7.h,
                width: 60.w,
                decoration: BoxDecoration(
                    color: const Color(0xFFE0E0E0),
                    borderRadius: BorderRadius.circular(20.r)),
              ),
              Positioned(
                  child: Container(
                height: 7.h,
                width: 30.w,
                decoration: BoxDecoration(
                    color: const Color(0xFFA0A0A0),
                    borderRadius: BorderRadius.circular(20.r)),
              ))
            ],
          ),
          5.w.hSpace,
          Text(
            rating.round().toString(),
            style: context.theme.textTheme.labelSmall!
                .copyWith(color: AppColors.kDescriptionTextColor),
          ),
        ],
      ),
    );
  }
}
