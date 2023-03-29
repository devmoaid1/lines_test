import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';

import '../../../../core/theme/app_colors.dart';
import '../../data/models/property.dart';

class PropertyCard extends StatelessWidget {
  final bool isColored;
  final Property property;
  const PropertyCard({
    super.key,
    required this.isColored,
    required this.property,
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
                property.type!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.theme.textTheme.bodySmall!.copyWith(
                    color: AppColors.kSubHeadingsTextColor,
                    fontWeight: FontWeight.w400),
              )),
          SizedBox(
            width: 170.w,
            child: Text(
              property.title!,
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
