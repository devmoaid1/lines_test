import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/enums/button_type.dart';
import '../../../../core/widgets/custom_clickable_card.dart';
import '../../../../core/widgets/custom_svg_icon.dart';

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
        5.w.hSpace,
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
