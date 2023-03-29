import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/features/product_details/data/models/product.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/add_to_bascket_button.dart';
import '../../../../core/widgets/circular_background_icon.dart';
import '../../../../core/widgets/custom_image.dart';

class RecommendationCard extends StatelessWidget {
  final RecommendedProduct product;
  const RecommendationCard({
    super.key,
    required this.product,
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
          Container(
              constraints: BoxConstraints(maxWidth: 120.w),
              child: Text(
                product.name!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.theme.textTheme.bodySmall!
                    .copyWith(color: AppColors.kHeadingsTextColor),
              )),
          5.h.vSpace,
          Container(
            constraints: BoxConstraints(maxWidth: 120.w),
            child: Text(
              '${product.currentPrice!.toStringAsFixed(0)} ر.س',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.theme.textTheme.bodySmall!
                  .copyWith(color: AppColors.kHeadingsTextColor),
            ),
          ),
          10.h.vSpace,
          AddToBascketButton(product: product)
        ],
      ),
    );
  }
}
