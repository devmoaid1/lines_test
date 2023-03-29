import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/theme/app_colors.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/product_details_cubit/product_details_cubit.dart';

import 'product_copoun_row.dart';
import 'product_prices_row.dart';
import 'product_rating_row.dart';

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProductRatingRow(),
        5.h.vSpace,
        const ProductPricesRow(),
        20.h.vSpace,
        const ProductCopounRow(),
        20.h.vSpace,
        BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
          builder: (context, state) => Text(
            state.product!.description!,
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.right,
            style: context.theme.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.kDescriptionTextColor),
          ),
        ),
        10.h.vSpace,
      ],
    );
  }
}
