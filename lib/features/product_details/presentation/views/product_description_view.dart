import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/constants/app_assets.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/theme/styles.dart';
import 'package:lines_test/core/widgets/custom_header.dart';
import 'package:lines_test/core/widgets/custom_image.dart';

import '../../../../core/theme/app_colors.dart';

class ProductDescriptionView extends StatelessWidget {
  const ProductDescriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.75,
      child: SingleChildScrollView(
        child: Padding(
          padding: Layouts.kDefaultPadding,
          child: Column(
            children: [
              20.h.vSpace,
              const CustomHeader(
                  title: 'التفاصيل',
                  iconData: Icons.close,
                  isFromRating: false),
              50.h.vSpace,
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu in at sit sed tristique. Massa cursus pellentesque laoreet dignissim lacus etiam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. mauris.',
                textAlign: TextAlign.right,
                style: context.theme.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.kDescriptionTextColor),
              ),
              4.h.vSpace,
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 5.h),
                    child: CustomImage(
                      path: AppAssets.productImagePath,
                      height: 254.h,
                      width: context.width,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
