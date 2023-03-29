import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/features/reviews/data/models/review.dart';

import '../../../../core/widgets/star_rating_row.dart';
import 'rating_text.dart';
import 'review_images_list.dart';
import 'review_user_details.dart';
import 'store_review_reply_column.dart';

class ReviewCard extends StatelessWidget {
  final Review review;
  const ReviewCard({
    super.key,
    required this.review,
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
        RatingText(
          text: review.comment!,
        ),
        10.h.vSpace,
        review.images.isNotEmpty
            ? ReviewImagesList(
                images: review.images,
              )
            : const SizedBox(),
        10.h.vSpace,
        ReviewUserDetails(review: review),
        10.h.vSpace,
        review.storeReply != null
            ? StoreReviewReplyColumn(
                storeReply: review.storeReply!,
              )
            : const SizedBox()
      ],
    );
  }
}
