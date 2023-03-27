import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/styles.dart';

class CustomDotsIndicator extends StatelessWidget {
  final double currentPosition;
  final int count;
  const CustomDotsIndicator({
    super.key,
    required this.currentPosition,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: count,
      position: currentPosition,
      decorator: DotsDecorator(
        size: const Size(15, 5),
        color: AppColors.kAppPrimaryColor.withOpacity(0.3),
        activeSize: const Size(25, 5),
        shape:
            RoundedRectangleBorder(borderRadius: Layouts.kDefaultBorderRadius),
        activeColor: AppColors.kAppPrimaryColor,
        activeShape:
            RoundedRectangleBorder(borderRadius: Layouts.kDefaultBorderRadius),
      ),
    );
  }
}
