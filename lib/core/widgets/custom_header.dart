import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/theme/app_colors.dart';
import 'package:lines_test/core/utils/show_bottom_modal.dart';
import 'package:lines_test/features/reviews/presentation/views/add_rating_view.dart';

class CustomHeader extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback? onIconTap;
  final bool isFromRating;
  const CustomHeader(
      {super.key,
      this.onIconTap,
      required this.title,
      required this.iconData,
      required this.isFromRating});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        InkWell(
          onTap: onIconTap ?? () => Navigator.pop(context),
          child: Icon(
            iconData,
          ),
        ),
        isFromRating ? 111.w.hSpace : const Spacer(),
        Center(
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: context.theme.textTheme.headlineMedium!.copyWith(
              color: AppColors.kHeadingsTextColor,
            ),
          ),
        ),
        const Spacer(),
        isFromRating
            ? InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Future.delayed(const Duration(seconds: 1));
                  showCustomBottomModal(const AddRatingView(), context);
                },
                child: Text(
                  'اضافة تقييم',
                  style: context.theme.textTheme.bodyMedium!
                      .copyWith(color: AppColors.kAppPrimaryColor),
                ),
              )
            : const SizedBox()
      ],
    );
  }
}
