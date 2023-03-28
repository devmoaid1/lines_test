import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/theme/app_colors.dart';

class ProductActionListTile extends StatelessWidget {
  final String actionTitle;
  final VoidCallback onTap;
  const ProductActionListTile(
      {super.key, required this.actionTitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: onTap,
      leading: Text(actionTitle,
          style: context.theme.textTheme.bodyLarge!
              .copyWith(color: AppColors.kSubHeadingsTextColor)),
      trailing: Icon(Icons.arrow_forward_ios,
          size: 18.h, color: AppColors.kSubHeadingsTextColor),
    );
  }
}
