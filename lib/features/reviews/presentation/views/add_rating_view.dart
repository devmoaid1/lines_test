import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/dependencies.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/theme/app_colors.dart';
import 'package:lines_test/core/widgets/custom_elevated_button.dart';
import 'package:lines_test/core/widgets/star_rating_row.dart';
import 'package:lines_test/features/reviews/presentation/viewmodels/add_rating/add_rating_cubit.dart';
import 'package:lines_test/features/reviews/presentation/widgets/add_rating_images.dart';

import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_header.dart';
import '../widgets/rating_text_field.dart';

class AddRatingView extends StatelessWidget {
  const AddRatingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: Layouts.kBottomModalBorderRadius,
        color: Colors.white,
      ),
      height: context.height * 0.75,
      child: Padding(
        padding: Layouts.kDefaultPadding,
        child: Column(
          children: [
            Expanded(
              child: BlocProvider(
                create: (context) => sl<AddRatingCubit>(),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      20.h.vSpace,
                      const CustomHeader(
                          smallHeading: true,
                          title: 'أضافة تقييم',
                          iconData: Icons.close,
                          isFromRating: false),
                      36.h.vSpace,
                      Row(
                        children: [
                          Text(
                            'تقييمك',
                            style: context.theme.textTheme.bodyLarge!.copyWith(
                                color: AppColors.kSubHeadingsTextColor),
                          ),
                          30.w.hSpace,
                          const StarRatingRow(rating: 0)
                        ],
                      ),
                      20.h.vSpace,
                      Text(
                        'اضافة تقييم',
                        style: context.theme.textTheme.bodyLarge!
                            .copyWith(color: AppColors.kSubHeadingsTextColor),
                      ),
                      10.h.vSpace,
                      const RatingTextField(),
                      20.h.vSpace,
                      const AddRatingImagesSection()
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton(
                title: 'ارسال التعليق',
                onPressed: () {},
              ),
            ),
            70.h.vSpace
          ],
        ),
      ),
    );
  }
}
