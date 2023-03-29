import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/features/reviews/presentation/viewmodels/rating_cubit/rating_cubit.dart';

import '../../../../core/dependencies.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_header.dart';
import '../widgets/rating_details_section.dart';
import '../widgets/reviews_section.dart';

class RatingsView extends StatelessWidget {
  const RatingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<RatingCubit>()..getProductRating(productId: 1),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: Layouts.kBottomModalBorderRadius,
          color: Colors.white,
        ),
        height: context.height * 0.75,
        child: Padding(
          padding: Layouts.kDefaultPadding,
          child: Column(
            children: [
              20.h.vSpace,
              const CustomHeader(
                  title: 'التقييمات',
                  iconData: Icons.close,
                  isFromRating: true),
              30.h.vSpace,
              const RatingDetailsSection(),
              30.h.vSpace,
              const ReviewsSection()
            ],
          ),
        ),
      ),
    );
  }
}
