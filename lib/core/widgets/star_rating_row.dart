import 'package:flutter/material.dart';
import 'package:lines_test/core/constants/app_assets.dart';
import 'package:lines_test/core/widgets/custom_svg_icon.dart';

class StarRatingRow extends StatelessWidget {
  final double rating;
  final double? height;
  final double? width;

  const StarRatingRow({
    Key? key,
    required this.rating,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int filledStars = rating.round();

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(5, (index) {
        Widget starIcon;
        if (index < filledStars) {
          starIcon = CustomSvgIcon(
            iconPath: AppAssets.starFilledIcon,
            width: width,
            height: height,
          );
        } else {
          starIcon = CustomSvgIcon(
              iconPath: AppAssets.starUnfilled, width: width, height: height);
        }
        return starIcon;
      }),
    );
  }
}
