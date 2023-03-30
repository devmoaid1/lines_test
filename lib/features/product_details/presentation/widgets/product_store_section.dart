import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/constants/app_assets.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/theme/app_colors.dart';
import 'package:lines_test/core/theme/styles.dart';
import 'package:lines_test/core/utils/enums/button_type.dart';
import 'package:lines_test/core/widgets/custom_clickable_card.dart';
import 'package:lines_test/core/widgets/custom_image.dart';
import 'package:lines_test/core/widgets/custom_svg_icon.dart';

class ProductStoreSection extends StatelessWidget {
  const ProductStoreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20.w, left: 10.w),
      decoration: BoxDecoration(
          color: AppColors.kCardBackgroundColor,
          borderRadius: Layouts.kDefaultBorderRadius),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          20.h.vSpace,
          const StoreDetailsRow(),
          10.h.vSpace,
          Text(
            'متجر عطور وتجميل',
            style: context.theme.textTheme.bodySmall!.copyWith(
                color: AppColors.kSubHeadingsTextColor,
                fontWeight: FontWeight.w400),
          ),
          8.h.vSpace,
          Row(
            children: [
              const CustomSvgIcon(iconPath: AppAssets.locationIcon),
              5.w.hSpace,
              Text(
                'الدمام',
                style: context.theme.textTheme.bodySmall!.copyWith(
                    color: AppColors.kSubHeadingsTextColor,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          11.h.vSpace,
          const StoreActionsRow(),
          20.h.vSpace
        ],
      ),
    );
  }
}

class StoreActionsRow extends StatelessWidget {
  const StoreActionsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomClickableCard(
          buttonType: ButtonType.filled,
          padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'زيارة المتجر',
                style: context.theme.textTheme.bodySmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
              ),
              5.w.hSpace,
              const Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 20,
              )
            ],
          ),
          onTap: () {},
        ),
        10.w.hSpace,
        CustomClickableCard(
          buttonType: ButtonType.outlined,
          padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 25.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomSvgIcon(iconPath: AppAssets.userAddIcon),
              5.w.hSpace,
              Text(
                'متابعة',
                style: context.theme.textTheme.bodySmall!.copyWith(
                    color: AppColors.kAppPrimaryColor,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          onTap: () {},
        ),
      ],
    );
  }
}

class StoreDetailsRow extends StatelessWidget {
  const StoreDetailsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomImage(
          path: AppAssets.channelImagePath,
          height: 30.h,
          width: 30.w,
          fit: BoxFit.fill,
        ),
        5.w.hSpace,
        const CustomSvgIcon(iconPath: AppAssets.crownIcon),
        5.w.hSpace,
        Text(
          'متجر تشانيل',
          style: context.theme.textTheme.bodyMedium!
              .copyWith(color: AppColors.kHeadingsTextColor),
        ),
        const Spacer(),
        const CustomSvgIcon(iconPath: AppAssets.messageTextIcon),
        25.w.hSpace,
        const CustomSvgIcon(iconPath: AppAssets.arrowCircleLeft),
      ],
    );
  }
}
