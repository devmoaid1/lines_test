import 'package:flutter/material.dart';

import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/theme/app_colors.dart';

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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: onIconTap ?? () => Navigator.pop(context),
          child: Icon(
            iconData,
          ),
        ),
        const Spacer(),
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
            ? TextButton(
                onPressed: () {},
                child: Text(
                  'اضافة تقييم',
                  style: context.theme.textTheme.bodyMedium!
                      .copyWith(color: AppColors.kAppPrimaryColor),
                ))
            : const SizedBox()
      ],
    );
  }
}
