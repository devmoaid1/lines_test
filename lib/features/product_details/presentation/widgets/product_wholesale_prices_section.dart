import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/theme/app_colors.dart';
import 'package:lines_test/core/theme/styles.dart';

import 'product_wholesale_table.dart';

class ProductWholeSalePricesSection extends StatelessWidget {
  const ProductWholeSalePricesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 11.w),
      decoration: BoxDecoration(
          borderRadius: Layouts.kDefaultBorderRadius,
          color: AppColors.kCardBackgroundColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          13.h.vSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'اسعار الجملة',
                style: context.theme.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.kHeadingsTextColor),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: AppColors.kHeadingsTextColor,
                size: 20.h,
              )
            ],
          ),
          SizedBox(
            height: 245.h,
            child: const ProductWholeSaleTable(),
          ),
          25.h.vSpace
        ],
      ),
    );
  }
}
