import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/spaces.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/circular_background_icon.dart';

class ProductActionsColumn extends StatelessWidget {
  const ProductActionsColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Layouts.kDefaultPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircularBackgroundIcon(iconPath: AppAssets.heartIcon),
          20.h.vSpace,
          const CircularBackgroundIcon(iconPath: AppAssets.repeatIcon),
          20.h.vSpace,
          const CircularBackgroundIcon(iconPath: AppAssets.shareIcon),
          20.h.vSpace
        ],
      ),
    );
  }
}
