import 'package:flutter/material.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/theme/app_colors.dart';

class SubHeading extends StatelessWidget {
  final String title;
  const SubHeading({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.theme.textTheme.bodyLarge!
          .copyWith(color: AppColors.kHeadingsTextColor),
    );
  }
}
