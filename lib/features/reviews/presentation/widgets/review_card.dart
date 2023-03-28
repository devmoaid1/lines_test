import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/spaces.dart';

import '../../../../core/widgets/star_rating_row.dart';
import 'rating_text.dart';
import 'review_images_list.dart';
import 'review_user_details.dart';
import 'store_review_reply_column.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StarRatingRow(
          rating: 5,
          width: 9.w,
          height: 9.h,
        ),
        10.h.vSpace,
        const RatingText(
          text:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu in at sit sed tristique..',
        ),
        10.h.vSpace,
        const ReviewImagesList(),
        10.h.vSpace,
        const ReviewUserDetails(),
        10.h.vSpace,
        const StoreReviewReplyColumn()
      ],
    );
  }
}
