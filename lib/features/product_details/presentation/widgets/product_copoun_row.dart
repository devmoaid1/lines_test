import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/product_details_cubit/product_details_cubit.dart';

import '../../../../core/theme/app_colors.dart';

class ProductCopounRow extends StatelessWidget {
  const ProductCopounRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 115.w,
              height: 30.h,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xFF3AC2CB),
              ),
              child: Text(
                'قسيمة خصم 5%',
                textAlign: TextAlign.center,
                style: context.theme.textTheme.bodySmall!
                    .copyWith(color: Colors.white),
              ),
            ),
            Positioned(
              top: 8.h,
              right: -10,
              child: ClipOval(
                child: Container(
                  width: 20.w,
                  height: 15.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 8.h,
              left: -10,
              child: ClipOval(
                child: Container(
                  width: 20.w,
                  height: 15.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
        15.w.hSpace,
        BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
            builder: (context, state) {
          return Text(
            'الكمية المتوفرة :${state.product!.stockQuantity}',
            style: context.theme.textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.kDescriptionTextColor),
          );
        }),
      ],
    );
  }
}
