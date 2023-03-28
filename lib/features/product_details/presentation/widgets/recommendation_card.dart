import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/enums/button_type.dart';
import '../../../../core/widgets/circular_background_icon.dart';
import '../../../../core/widgets/custom_clickable_card.dart';
import '../../../../core/widgets/custom_image.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      margin: EdgeInsets.only(left: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              CustomImage(
                path: AppAssets.recommendedProductImagePath,
                width: 150.h,
                height: 140.w,
              ),
              Positioned(
                  top: 10.h,
                  right: 10.w,
                  child: const CircularBackgroundIcon(
                      iconPath: AppAssets.heartIcon))
            ],
          ),
          5.h.vSpace,
          const Text('عطر رجالي '),
          5.h.vSpace,
          const Text('2500 ر.س'),
          10.h.vSpace,
          CustomClickableCard(
              onTap: () {},
              buttonType: ButtonType.outlined,
              child: Text(
                'اضافة للسلة',
                style: context.theme.textTheme.bodyMedium!
                    .copyWith(color: AppColors.kAppPrimaryColor),
              ))
        ],
      ),
    );
  }
}
