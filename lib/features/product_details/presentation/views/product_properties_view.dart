import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/theme/app_colors.dart';

import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_header.dart';

class ProductPropertiesView extends StatelessWidget {
  const ProductPropertiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.75,
      child: Padding(
        padding: Layouts.kDefaultPadding,
        child: Column(
          children: [
            20.h.vSpace,
            const CustomHeader(
                title: 'التفاصيل', iconData: Icons.close, isFromRating: false),
            50.h.vSpace,
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    color: index % 2 != 0
                        ? AppColors.kPropertyRowColor
                        : Colors.transparent,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 170.w,
                          child: Text(
                            'White Musk, Cashmeran, Cedar',
                            style: context.theme.textTheme.bodySmall!.copyWith(
                                color: AppColors.kSubHeadingsTextColor,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                            width: 70.w,
                            child: Text(
                              'نفحات قاعدية',
                              style: context.theme.textTheme.bodySmall!
                                  .copyWith(
                                      color: AppColors.kSubHeadingsTextColor,
                                      fontWeight: FontWeight.w400),
                            )),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
