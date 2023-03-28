import 'package:flutter/material.dart';
import 'package:lines_test/core/extensions/app_context.dart';

import '../../../../core/theme/app_colors.dart';

class RatingText extends StatelessWidget {
  final String text;
  const RatingText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.right,
      style: context.theme.textTheme.bodySmall!.copyWith(
          color: AppColors.kSubHeadingsTextColor, fontWeight: FontWeight.w400),
    );
  }
}
