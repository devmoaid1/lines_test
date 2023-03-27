import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/constants/app_assets.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/theme/app_colors.dart';
import 'package:lines_test/core/widgets/custom_svg_icon.dart';

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
        Row(
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
            Text(
              'الكمية المتوفرة :10',
              style: context.theme.textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.kDescriptionTextColor),
            ),
          ],
        ),
        20.h.vSpace,
        Text(
          'Lorem ipsum dolor sit amet, ipiscingisl amet orci ipsum dis lectus hac mauris.',
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.right,
          style: context.theme.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.kDescriptionTextColor),
        ),
      ],
    );
  }
}

class ProductPricesRow extends StatelessWidget {
  const ProductPricesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text('25 ر.س',
            style: context.theme.textTheme.headlineLarge!
                .copyWith(color: AppColors.kAppPrimaryColor)),
        11.w.hSpace,
        Text('25 ر.س',
            style: context.theme.textTheme.bodyLarge!.copyWith(
              color: AppColors.kDescriptionTextColor,
              decoration: TextDecoration.lineThrough,
            )),
        11.w.hSpace,
        Text('خصم 20%',
            style: context.theme.textTheme.bodyLarge!.copyWith(
              color: const Color(0xFF02B503),
            )),
      ],
    );
  }
}

class ProductRatingRow extends StatelessWidget {
  const ProductRatingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomSvgIcon(iconPath: AppAssets.starFilledIcon),
        2.w.hSpace,
        Text(
          '5.0',
          style: context.theme.textTheme.bodySmall!
              .copyWith(color: AppColors.kRatingColor),
        ),
        5.w.hSpace,
        Text(
          ' 5 تقييمات',
          style: context.theme.textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.kDescriptionTextColor),
        ),
      ],
    );
  }
}
