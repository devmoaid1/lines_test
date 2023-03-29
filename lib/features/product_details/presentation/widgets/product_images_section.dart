import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/theme/app_colors.dart';
import 'package:lines_test/core/widgets/custom_image.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/product_details_cubit/product_details_cubit.dart';

import 'custom_dots_indicator.dart';
import 'product_actions_column.dart';

class ProductImagesSection extends StatelessWidget {
  const ProductImagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              state.product!.name!,
              style: context.theme.textTheme.bodyMedium!
                  .copyWith(color: AppColors.kSubHeadingsTextColor),
            ),
            10.h.vSpace,
            Stack(
              children: [
                CarouselSlider.builder(
                  itemCount: state.product!.imagePaths!.length,
                  options: CarouselOptions(
                    viewportFraction: 1,
                    height: 287.h,
                    onPageChanged: (index, reason) =>
                        BlocProvider.of<ProductDetailsCubit>(context)
                            .changeDotIndex(index),
                  ),
                  itemBuilder: (context, index, realIndex) {
                    return CustomImage(
                      path: state.product!.imagePaths![index],
                      width: 323.w,
                      height: 287.h,
                    );
                  },
                ),
                Positioned(
                  left: 0,
                  top: 79.h,
                  child: const ProductActionsColumn(),
                ),
                Positioned(
                  bottom: 15.h,
                  left: 0,
                  right: 0,
                  child: CustomDotsIndicator(
                    count: state.product!.imagePaths!.length,
                    currentPosition: state.dotIndex!.toDouble(),
                  ),
                )
              ],
            ),
            10.h.vSpace,
          ],
        );
      },
    );
  }
}
