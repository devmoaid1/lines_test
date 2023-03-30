import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/product_details_cubit/product_details_cubit.dart';

import '../../../../core/theme/app_colors.dart';

class ProductPricesRow extends StatelessWidget {
  const ProductPricesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (context, state) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('${state.product!.currentPrice!.round()} ر.س',
                style: context.theme.textTheme.headlineLarge!
                    .copyWith(color: AppColors.kAppPrimaryColor)),
            11.w.hSpace,
            Text('${state.product!.originalPrice!.round()} ر.س',
                style: context.theme.textTheme.bodyLarge!.copyWith(
                  color: AppColors.kDescriptionTextColor,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.lineThrough,
                )),
            11.w.hSpace,
            Text(
                'خصم ${100 - ((state.product!.currentPrice!.round() / state.product!.originalPrice!.round()) * 100).round()}%',
                style: context.theme.textTheme.bodyLarge!.copyWith(
                    color: AppColors.kDeepGreenColor,
                    fontWeight: FontWeight.w400)),
          ],
        );
      },
    );
  }
}
