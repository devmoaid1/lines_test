import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';

import '../../../../core/theme/app_colors.dart';

class PropertyCard extends StatelessWidget {
  final bool isColored;
  const PropertyCard({
    super.key,
    required this.isColored,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isColored ? AppColors.kPropertyRowColor : Colors.transparent,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              width: 70.w,
              child: Text(
                'نفحات قاعدية',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.theme.textTheme.bodySmall!.copyWith(
                    color: AppColors.kSubHeadingsTextColor,
                    fontWeight: FontWeight.w400),
              )),
          SizedBox(
            width: 170.w,
            child: Text(
              'White Musk, Cashmeran, Cedar',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.theme.textTheme.bodySmall!.copyWith(
                  color: AppColors.kSubHeadingsTextColor,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
