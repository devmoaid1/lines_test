import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/product_details_cubit/product_details_cubit.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_svg_icon.dart';

class ProductRatingRow extends StatelessWidget {
  const ProductRatingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (context, state) {
        return Row(
          children: [
            CustomSvgIcon(
              iconPath: AppAssets.starFilledIcon,
              width: 16.w,
              height: 16.h,
            ),
            2.w.hSpace,
            Text(
              state.product!.shortRating!.rating.toString(),
              style: context.theme.textTheme.bodySmall!
                  .copyWith(color: AppColors.kRatingColor),
            ),
            5.w.hSpace,
            Text(
              ' ${state.product!.shortRating!.ratingCount} تقييمات',
              style: context.theme.textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.kDescriptionTextColor),
            ),
          ],
        );
      },
    );
  }
}
