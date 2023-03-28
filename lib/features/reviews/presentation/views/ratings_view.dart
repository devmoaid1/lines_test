import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';

import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_header.dart';
import '../widgets/rating_details_section.dart';
import '../widgets/reviews_section.dart';

class RatingsView extends StatelessWidget {
  const RatingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: Layouts.kDefaultBorderRadius,
        color: Colors.white,
      ),
      height: context.height * 0.75,
      child: Padding(
        padding: Layouts.kDefaultPadding,
        child: Column(
          children: [
            20.h.vSpace,
            const CustomHeader(
                title: 'التقييمات', iconData: Icons.close, isFromRating: true),
            30.h.vSpace,
            const RatingDetailsSection(),
            30.h.vSpace,
            const ReviewsSection()
          ],
        ),
      ),
    );
  }
}
