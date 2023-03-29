import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/features/reviews/data/models/store_reply.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_svg_icon.dart';
import 'rating_text.dart';

class StoreReviewReplyColumn extends StatelessWidget {
  final StoreReply storeReply;
  const StoreReviewReplyColumn({
    super.key,
    required this.storeReply,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 35.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomSvgIcon(
                iconPath: AppAssets.crownIcon,
                width: 25.w,
                height: 25.h,
              ),
              5.w.hSpace,
              Text(
                'متجر ${storeReply.storeName}',
                style: context.theme.textTheme.bodyLarge!
                    .copyWith(color: AppColors.kHeadingsTextColor),
              ),
            ],
          ),
          5.h.vSpace,
          Container(
            margin: EdgeInsets.only(right: 30.w),
            child: RatingText(
              text: '${storeReply.reply}',
            ),
          )
        ],
      ),
    );
  }
}
