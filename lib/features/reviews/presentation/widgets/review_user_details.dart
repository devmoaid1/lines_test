import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/features/reviews/data/models/review.dart';
import 'package:lines_test/features/reviews/presentation/viewmodels/cubit/rating_cubit.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';

class ReviewUserDetails extends StatelessWidget {
  final Review review;
  const ReviewUserDetails({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RatingCubit, RatingState>(
      builder: (context, state) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 15.h,
              foregroundColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              backgroundImage: const AssetImage(AppAssets.userImagePath),
            ),
            5.w.hSpace,
            Text(review.user!.name!,
                style: context.theme.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.kHeadingsTextColor)),
            5.w.hSpace,
            Text(review.date!,
                style: context.theme.textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.kDescriptionTextColor))
          ],
        );
      },
    );
  }
}
