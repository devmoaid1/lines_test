import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';

import '../../../../core/theme/app_colors.dart';

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
