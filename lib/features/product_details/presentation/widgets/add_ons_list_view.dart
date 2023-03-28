import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_image.dart';

class AddOnsListView extends StatelessWidget {
  const AddOnsListView({
    super.key,
    required ScrollController scrollController,
  }) : _scrollController = scrollController;

  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      padding: EdgeInsets.only(right: 20.w),
      itemCount: 4,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          width: 113.w,
          margin: EdgeInsets.only(left: 20.w),
          decoration: BoxDecoration(
              borderRadius: Layouts.kDefaultBorderRadius,
              border: Border.all(color: AppColors.kAppPrimaryColor)),
          child: Column(
            children: [
              25.h.vSpace,
              CustomImage(
                path: AppAssets.addOnImagePath,
                height: 61.h,
                width: 70.w,
                fit: BoxFit.contain,
              ),
              5.h.vSpace,
              Container(
                constraints: BoxConstraints(maxWidth: 80.w),
                child: Text(
                  'علب تعبئة',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.right,
                  style: context.theme.textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.kHeadingsTextColor),
                ),
              ),
              const Spacer(),
              Container(
                constraints: BoxConstraints(maxWidth: 80.w),
                child: Text(
                  '10 ر.س',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.right,
                  style: context.theme.textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.kHeadingsTextColor),
                ),
              ),
              4.h.vSpace,
            ],
          ),
        );
      },
    );
  }
}
